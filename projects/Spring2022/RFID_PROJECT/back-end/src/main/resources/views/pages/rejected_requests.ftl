<#include "../templates/main_template.ftl"/>
<#include "../templates/table.ftl"/>

<#macro thead>
    <th>№ карты</th>
    <th>№ считывателя</th>
    <th>Дата и время</th>
</#macro>

<#macro tbody>
    <#list activities as activity>
        <tr>
            <td>${activity.cardId}</td>
            <td>${activity.scannerHardwareNum}</td>
            <td>${activity.formattedDismissedEnterActivity}</td>
        </tr>
    </#list>
</#macro>

<#macro content>
    <script>
        setInterval(() => goTo('rejected'), 4000);
    </script>
    <@table caption="Отклоненные запросы"/>
    <button onclick="goTo('start')">Последняя активность</button>
</#macro>

<@main page="rejected_requests"/>