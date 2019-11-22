<div class="card w-100">
   <div class="card-body p-2">
      <div class="nice-nav">
         [root]
         <ul>
            [/root]
            [item]
            <li class="child-menu" id="cat{id}">
               <a href="{url}" [active]class="active1"[/active]><img src="{icon}" class="catimg"><span> {name}</span> [isparent]<span class="fa fa-angle-right toggle-right"></span>[/isparent]</a>
               [sub-prefix]
               <ul class="child-menu-ul">
                  [/sub-prefix]
                  {sub-item}
                  [sub-suffix]
               </ul>
               [/sub-suffix]
            </li>
            [/item]
            [root]
         </ul>
         [/root]
      </div>
   </div>
</div>