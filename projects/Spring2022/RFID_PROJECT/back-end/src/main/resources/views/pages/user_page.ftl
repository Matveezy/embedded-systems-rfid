<#include "../templates/main_template.ftl"/>
<#include "../templates/table.ftl"/>

<#macro thead>
    <th>№ считывателя</th>
    <th>Дата и время</th>
</#macro>

<#macro tbody>
    <#list activities as activity>
        <tr>
            <td>${activity.scanner.hardwareNumber}</td>
            <td>${activity.formattedEnterActivity}</td>
        </tr>
    </#list>
</#macro>

<#macro content>
<#--    <script>-->
<#--        setInterval(goTo('user/get/${user.userId}'), 1000);-->
<#--    </script>-->
    <div id="left">
        <div id="name">
            <div class="topic">ФИО:
                </br>
                <text class="content">${user.surname} ${user.name} ${user.patronymic}</text>
            </div>
        </div>
        <div id="role">
            <div class="topic">Роль:
                <#if user.role == 'USER'>
                    <text id="role-block" class="content">Пользователь</text>
                <#else>
                    <text id="role-block" class="content">Админ</text>
                </#if>
            </div>
        </div>
        <div id="user_id">
            <div class="topic">ID:
                <text class="content">${user.userId}</text>
            </div>
        </div>
        <div id="user_card_id">
            <div class="topic">Card ID:
                <text class="content">${user.cardId}</text>
            </div>
        </div>
        <button onclick=goTo('user/edit/${user.userId}')>Редактировать профиль</button>
    </div>
    <div id="right">
        <@table caption="Последняя активность"/>
    </div>
</#macro>

<@main page="user_page"/>