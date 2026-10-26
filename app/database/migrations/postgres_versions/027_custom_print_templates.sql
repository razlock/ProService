-- Миграция: установка кастомных шаблонов печати Profi Service
-- Применяется автоматически при развертывании CRM

UPDATE print_templates SET html_content = '<div style="font-family: Arial, sans-serif; width: 100%; padding: 10px; box-sizing: border-box;">
    <!-- Шапка: Заголовок слева, Логотип справа -->
    <table style="width: 100%; border-collapse: collapse; margin-bottom: 20px;">
        <tr>
            <td style="width: 60%; vertical-align: top;">
                <h2 style="margin-top: 0; font-size: 28px;">Приемная квитанция</h2>
                <p style="font-size: 16px; margin-bottom: 5px;">Заказ <strong>##ORDER_NUMBER##</strong> от <strong>##CREATED_AT##</strong></p>
            </td>
            <td style="width: 40%; vertical-align: top; text-align: right;">
                <img src="##COMPANY_LOGO_URL##" alt="Логотип" style="max-width: 180px; margin-bottom: 5px;">
                <p style="font-size: 15px; margin: 0 0 5px 0;"><strong>##COMPANY_NAME##</strong></p>
                <p style="font-size: 13px; line-height: 1.4; color: #555; margin: 0;">
                    ##branch.address##<br>
                    ##branch.phone##<br>
                    ##COMPANY_REQUISITES##
                </p>
            </td>
        </tr>
    </table>

    <!-- Правила на всю ширину (14px) -->
    <div style="font-size: 14px; line-height: 1.5; margin-bottom: 25px; text-align: justify; color: #000;">
        <ol style="padding-left: 20px; margin: 0;">
            <li>Стоимость услуг определяется сервис-инженером только после проведения диагностики оборудования.</li>
            <li>Сроки ремонта устанавливаются в зависимости от наличия запчастей и сложности выполнения работ.</li>
            <li>Аппараты принимаются на ремонт/диагностику без SIM карт и карт памяти, а также зарядных устройств, гарнитур, кабелей и других аксессуаров, кроме тех случаев, когда это необходимо для диагностики.</li>
            <li>Оборудование с согласия клиента принято без разборки и проверки неисправностей. Клиент согласен, что все неисправности и внутренние повреждения, которые могут быть обнаружены в оборудовании, возникли до приема.</li>
            <li>Заказчик согласен на обработку персональных данных. Сервисный центр не несет ответственности за сохранность данных в памяти оборудования.</li>
            <li>Исполнитель предоставляет гарантию на ремонт узлов до 14 дней на установленные комплектующие.</li>
            <li>Заказчик обязан проверить работоспособность оборудования в присутствии сервис-инженера.</li>
            <li>Установленные узлы или расходные материалы возврату не подлежат.</li>
            <li>В случае утери квитанции выдача аппарата производится при предъявлении паспорта.</li>
            <li>Сданный аппарат должен быть получен в течение 30 дней с момента извещения. Аппараты, невостребованные в течение 90 дней, могут быть реализованы в установленном законом порядке.</li>
        </ol>
    </div>

    <!-- Таблица данных клиента -->
    <table style="width: 100%; border-collapse: collapse; border: 1px solid #999; margin-bottom: 25px; font-size: 15px;">
        <tr>
            <td style="border-bottom: 1px solid #999; border-right: 1px solid #999; padding: 12px; width: 25%; background: #f5f5f5;"><strong>Клиент</strong></td>
            <td style="border-bottom: 1px solid #999; padding: 12px;">##CLIENT_NAME##, ##CLIENT_PHONE1##</td>
        </tr>
        <tr>
            <td style="border-bottom: 1px solid #999; border-right: 1px solid #999; padding: 12px; background: #f5f5f5;"><strong>Устройство</strong></td>
            <td style="border-bottom: 1px solid #999; padding: 12px;">##DEVICE_BRAND## ##MODEL##</td>
        </tr>
        <tr>
            <td style="border-bottom: 1px solid #999; border-right: 1px solid #999; padding: 12px; background: #f5f5f5;"><strong>Внешний вид / комплектация</strong></td>
            <td style="border-bottom: 1px solid #999; padding: 12px;">##APPEARANCE##</td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #999; padding: 12px; background: #f5f5f5;"><strong>Неисправность</strong></td>
            <td style="padding: 12px;">##SYMPTOM_TAGS##</td>
        </tr>
    </table>

    <!-- Таблица оплаты и подписей -->
    <table style="width: 100%; border-collapse: collapse; border: 1px solid #999; margin-bottom: 30px; font-size: 15px;">
        <tr>
            <td colspan="2" style="border-bottom: 1px solid #999; padding: 12px; background: #f5f5f5;">
                <p style="margin: 0 0 8px 0;"><strong>Предварительная стоимость: ##ESTIMATED_COST## ##CURRENCY##</strong></p>
                <p style="margin: 0;"><strong>Предоплата: ##TOTAL_PAID## (##total.paid.words##)</strong></p>
            </td>
        </tr>
        <tr>
            <td style="border-right: 1px solid #999; padding: 25px 12px; width: 50%; vertical-align: bottom;"><strong>Исполнитель</strong>: __________________ / ##ENGINEER_NAME##</td>
            <td style="padding: 25px 12px; width: 50%; vertical-align: bottom;"><strong>Заказчик</strong>: __________________ / ##CLIENT_NAME##</td>
        </tr>
        <tr>
            <td colspan="2" style="border-top: 1px solid #999; padding: 12px;"><strong>Дата</strong>: ##DATE_TODAY## ##TIME_NOW##</td>
        </tr>
    </table>

    <!-- Линия отреза -->
    <div style="text-align: center; margin: 30px 0; color: #666; font-size: 16px;">✂ ---------------------------------------------------------------</div>

    <!-- Корешок -->
    <table style="width: 100%; border-collapse: collapse; border: 1px solid #999; font-size: 15px;">
        <tr>
            <td style="border-bottom: 1px solid #999; border-right: 1px solid #999; padding: 12px;">
                <h3 style="margin: 0; font-size: 18px;">Заказ ##ORDER_NUMBER## от ##CREATED_AT##</h3>
            </td>
            <td style="border-bottom: 1px solid #999; padding: 12px; text-align: right;">##ticket.numberId.barcode##</td>
        </tr>
        <tr>
            <td style="border-bottom: 1px solid #999; border-right: 1px solid #999; padding: 12px; width: 30%;"><strong>Клиент</strong></td>
            <td style="border-bottom: 1px solid #999; padding: 12px;">##CLIENT_NAME##, ##CLIENT_PHONE1##</td>
        </tr>
        <tr>
            <td style="border-bottom: 1px solid #999; border-right: 1px solid #999; padding: 12px;"><strong>Устройство</strong></td>
            <td style="border-bottom: 1px solid #999; padding: 12px;">##DEVICE_BRAND## ##MODEL##</td>
        </tr>
        <tr>
            <td style="border-bottom: 1px solid #999; border-right: 1px solid #999; padding: 12px;"><strong>Неисправность</strong></td>
            <td style="border-bottom: 1px solid #999; padding: 12px;">##SYMPTOM_TAGS##</td>
        </tr>
        <tr>
            <td colspan="2" style="padding: 30px 12px 15px 12px;">
                <table style="width: 100%; border: none;">
                    <tr>
                        <td style="width: 50%; vertical-align: bottom;">Исполнитель: __________________ / ##ENGINEER_NAME##</td>
                        <td style="width: 50%; vertical-align: bottom;">Заказчик: __________________ / ##CLIENT_NAME##</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>' WHERE template_type = 'customer' AND branch_id IS NULL;
UPDATE print_templates SET html_content = '<div style="font-family: Arial, sans-serif; max-width: 800px; margin: 0 auto;">
    <table style="width: 100%; border-collapse: collapse; margin-bottom: 20px;">
        <tr>
            <td style="width: 60%; vertical-align: top; padding: 10px;">
                <h2>Акт выполненных работ</h2>
                <p>Заказ <strong>##ORDER_NUMBER##</strong> от <strong>##CREATED_AT##</strong></p>
                <ol style="font-size: 10px; padding-left: 15px;">
                    <li>Гарантийный ремонт производится в срок от 1 до 7 дней после поступления запчастей.</li>
                    <li>Выход устройства из строя в результате действий пользователя или заражения вирусами гарантийным случаем не является.</li>
                    <li>Исполнитель предоставляет гарантию на ремонт в соответствии с гарантийным талоном. При этом гарантия Исполнителя распространяется только на те узлы или комплектующие, которые подвергались ремонту или замене Исполнителем.</li>
                    <li>Гарантийное обслуживание производится по адресу, указанному в Акте, и только при наличии у Заказчика Акта сдачи-приемки работ, подписанного обеими сторонами.</li>
                    <li>Исполнитель несет ответственность только за услуги, оказанные в соответствии с данным Договором.</li>
                    <li>Ремонт и обслуживание оборудования осуществляются в соответствии с требованиями нормативных документов, в том числе ГОСТ 12.2006-87 п.1, ГОСТ 50377-82 п.2.1.4, ГОСТ 30326-95, ГОСТ Р 50936-96, и согласно Федеральному Закону «О защите прав потребителей».</li>
                    <li>Исполнитель не несет гарантийных обязательств в случаях отсутствия или повреждения гарантийной пломбы Исполнителя, внесения каких-либо изменений в конфигурацию оборудования, попыток самостоятельного ремонта, в том числе с заменой узлов, комплектующих или расходных материалов, в случае установки или настройки программного обеспечения, в случае монтажных работ, работ по администрированию без присутствия представителя Исполнителя.</li>
                    <li>Требования по устранению недостатков оказанных услуг принимаются Исполнителем только в письменном виде и при условии выполнения установленных производителем правил эксплуатации оборудования.</li>
                    <li>Установленные узлы или расходные материалы возврату не подлежат.</li>
                </ol>
            </td>
            <td style="width: 40%; vertical-align: top; padding: 10px;">
                <p><img src="##COMPANY_LOGO_URL##" alt="Логотип" style="max-width: 150px;"></p>
                <p><strong>##COMPANY_NAME##</strong></p>
                <p>##branch.address##<br>##branch.phone##<br>##COMPANY_REQUISITES##</p>
            </td>
        </tr>
    </table>

    <table style="width: 100%; border-collapse: collapse; border: 1px solid #000; margin-bottom: 20px; font-size: 12px;">
        <thead>
            <tr style="background-color: #f3f4f6;">
                <th style="border: 1px solid #000; padding: 5px;">№</th>
                <th style="border: 1px solid #000; padding: 5px;">Наименование работ / товара</th>
                <th style="border: 1px solid #000; padding: 5px;">Артикул</th>
                <th style="border: 1px solid #000; padding: 5px;">Гарантия</th>
                <th style="border: 1px solid #000; padding: 5px;">Цена</th>
                <th style="border: 1px solid #000; padding: 5px;">Скидка</th>
                <th style="border: 1px solid #000; padding: 5px;">Кол-во</th>
                <th style="border: 1px solid #000; padding: 5px;">Сумма</th>
            </tr>
        </thead>
        <tbody>
            <tr data-for="ITEMS">
                <td style="border: 1px solid #000; padding: 5px; text-align: center;">##INDEX##</td>
                <td style="border: 1px solid #000; padding: 5px;">##ITEM_NAME##</td>
                <td style="border: 1px solid #000; padding: 5px; text-align: center;">##ITEM_SKU##</td>
                <td style="border: 1px solid #000; padding: 5px; text-align: center;">##ITEM_WARRANTY##</td>
                <td style="border: 1px solid #000; padding: 5px; text-align: right;">##ITEM_PRICE##</td>
                <td style="border: 1px solid #000; padding: 5px; text-align: right;">##ITEM_DISCOUNT##</td>
                <td style="border: 1px solid #000; padding: 5px; text-align: center;">##ITEM_QUANTITY##</td>
                <td style="border: 1px solid #000; padding: 5px; text-align: right;">##ITEM_SUM##</td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="7" style="border: 1px solid #000; padding: 5px; text-align: right;"><strong>Итого:</strong></td>
                <td style="border: 1px solid #000; padding: 5px; text-align: right;"><strong>##TOTAL_ITEMS##</strong></td>
            </tr>
        </tfoot>
    </table>

    <p style="font-size: 12px;"><strong>Работы выполнены в полном объеме, в срок и с надлежащим качеством. Заказчик претензий по объему, срокам и качеству не имеет. Стоимость работ (услуг) и товаров Заказчиком принята.</strong></p>

    <table style="width: 100%; border-collapse: collapse; border: 1px solid #000; margin-bottom: 20px; font-size: 12px;">
        <tr>
            <td style="border: 1px solid #000; padding: 15px; width: 50%;"><strong>Исполнитель</strong>: __________________ / ##ENGINEER_NAME##</td>
            <td style="border: 1px solid #000; padding: 15px; width: 50%;"><strong>Заказчик</strong>: __________________ / ##CLIENT_NAME##</td>
        </tr>
        <tr>
            <td colspan="2" style="border: 1px solid #000; padding: 10px;"><strong>Дата</strong>: ##DATE_TODAY##</td>
        </tr>
    </table>

    <p style="text-align: center; margin: 20px 0;">✂ ---------------------------------------------------------------</p>

    <table style="width: 100%; border-collapse: collapse; border: 1px solid #000; font-size: 12px;">
        <tr>
            <td colspan="2" style="border: 1px solid #000; padding: 5px;">
                <h3 style="margin: 0;">Акт ##ORDER_NUMBER## от ##CREATED_AT##</h3>
            </td>
            <td style="border: 1px solid #000; padding: 5px; text-align: right;">##ticket.numberId.barcode##</td>
        </tr>
        <tr>
            <td style="border: 1px solid #000; padding: 5px; width: 70%;"><strong>Клиент:</strong> ##CLIENT_NAME##, ##CLIENT_PHONE1##</td>
            <td colspan="2" style="border: 1px solid #000; padding: 5px; width: 30%;"><strong>Сумма:</strong> ##TOTAL_ITEMS##</td>
        </tr>
        <tr>
            <td colspan="3" style="border: 1px solid #000; padding: 15px;">
                <table style="width: 100%; border: none;">
                    <tr>
                        <td style="width: 50%;">Исполнитель: __________________ / ##ENGINEER_NAME##</td>
                        <td style="width: 50%;">Заказчик: __________________ / ##CLIENT_NAME##</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>' WHERE template_type = 'work_act' AND branch_id IS NULL;
