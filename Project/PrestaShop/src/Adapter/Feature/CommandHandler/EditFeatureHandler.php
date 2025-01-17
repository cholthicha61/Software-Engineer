<?php
/**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/OSL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/OSL-3.0 Open Software License (OSL 3.0)
 */

namespace PrestaShop\PrestaShop\Adapter\Feature\CommandHandler;

use PrestaShop\PrestaShop\Adapter\Domain\AbstractObjectModelHandler;
use PrestaShop\PrestaShop\Adapter\Feature\Repository\FeatureRepository;
use PrestaShop\PrestaShop\Core\CommandBus\Attributes\AsCommandHandler;
use PrestaShop\PrestaShop\Core\Domain\Feature\Command\EditFeatureCommand;
use PrestaShop\PrestaShop\Core\Domain\Feature\CommandHandler\EditFeatureHandlerInterface;
use PrestaShop\PrestaShop\Core\Domain\Shop\ValueObject\ShopId;

/**
 * Handles feature editing.
 */
#[AsCommandHandler]
class EditFeatureHandler extends AbstractObjectModelHandler implements EditFeatureHandlerInterface
{
    /**
     * @var FeatureRepository
     */
    private $featureRepository;

    public function __construct(
        FeatureRepository $featureRepository
    ) {
        $this->featureRepository = $featureRepository;
    }

    /**
     * {@inheritdoc}
     */
    public function handle(EditFeatureCommand $command): void
    {
        $feature = $this->featureRepository->get($command->getFeatureId());

        if (null !== $command->getLocalizedNames()) {
            $feature->name = $command->getLocalizedNames();
        }

        $this->featureRepository->update($feature);

        // ObjectModel::update doesn't seem to remove unassociated shops, so we must always update them manually afterwards
        if (null !== $command->getAssociatedShopIds()) {
            $this->associateWithShops($feature, array_map(static function (ShopId $shopId) {
                return $shopId->getValue();
            }, $command->getAssociatedShopIds()));
        }
    }
}
