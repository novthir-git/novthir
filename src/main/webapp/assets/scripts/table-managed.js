/**
 *  配置可参考http://www.cnblogs.com/firesnow/archive/2013/04/07/3006508.html,
 *  http://www.javashen.com/forum.php?mod=viewthread&tid=1708
 *  http://www.javashen.com/forum.php?mod=viewthread&tid=1659&reltid=1663&pre_thread_id=1708&pre_pos=2&ext=
 */
var TableManaged = function () {
 
    return {

        //main function to initiate the module
        init: function () {
            
            if (!jQuery().dataTable) {
                return;
            }

            // begin first table
            $('#sample_1').dataTable({
                "aoColumns": [
                  { "bSortable": false },
                  null,
                  { "bSortable": false },
                  null,
                  { "bSortable": false },
                  { "bSortable": false }
                ],
                "aLengthMenu": [
                    [5, 15, 20, -1],
                    [5, 15, 20, "All"] // change per page values here
                ],
                // set the initial value
                "iDisplayLength": 5,
                "sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
                "sPaginationType": "bootstrap",
                "oLanguage": {
                	"sSearch": "搜索",
                    "sLengthMenu": "每页显示 _MENU_ 条记录",
                    "sZeroRecords": "没有检索到数据",
                    "sInfo": "显示 _START_ 至 _END_ 条 &nbsp;&nbsp;共 _TOTAL_ 条",
                    "sInfoFiltered": "(筛选自 _MAX_ 条数据)",
                    "sInfoEmtpy": "没有数据",
                    "sProcessing": "正在加载数据...",
                    "bFilter": false, //搜索栏
                    "sProcessing": "<img src='{{rootUrl}}global/img/ajaxLoader/loader01.gif' />", //这里是给服务器发请求后到等待时间显示的 加载gif
                     "oPaginate": {
                                "sFirst": "首页",
                                "sPrevious": "前一页",
                                "sNext": "后一页",
                                "sLast": "末页"
                            }
                },
                "bServerSide": true,
                "sAjaxSource": "./list",
                "aoColumns": [
                     {
                    	 "mData":"id",
                    	  "mRender":function(data, type, full){
                    		  return '<div class="checker"><span><input type="checkbox" class="checkboxes" value="'+data+'"></span></div>';
                    	  }
                    },
					{ "mData": "username" },
					{ "mData": "email" },
					{ "mData": "realname" },
					{ "mData": "phone" },
					{ "mData": "createTime" }
					],
                "aoColumnDefs": [{
                        'bSortable': false,
                        'aTargets': [0]
                    }
                ]
            });

            jQuery('#sample_1 .group-checkable').change(function () {
                var set = jQuery(this).attr("data-set");
                var checked = jQuery(this).is(":checked");
                jQuery(set).each(function () {
                    if (checked) {
                        $(this).attr("checked", true);
                    } else {
                        $(this).attr("checked", false);
                    }
                });
                jQuery.uniform.update(set);
            });

            jQuery('#sample_1_wrapper .dataTables_filter input').addClass("m-wrap medium"); // modify table search input
            jQuery('#sample_1_wrapper .dataTables_length select').addClass("m-wrap small"); // modify table per page dropdown
            //jQuery('#sample_1_wrapper .dataTables_length select').select2(); // initialize select2 dropdown
        
        }

    };

}();