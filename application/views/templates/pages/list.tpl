<!--list-->
<section class="content-wrapper">
    <div class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Record List</h3>

                        <div class="box-btn">

                        </div>

                        <div class="box-tools">
                            <div class="input-group input-group-sm" style="width: 150px;">
                                <input type="text" name="table_search" class="form-control pull-right"
                                       placeholder="Search">

                                <div class="input-group-btn">
                                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body table-responsive no-padding">
                        <table class="table table-hover">
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Artist</th>
                                <th>Status</th>
                            </tr>
                            {nocache}
                                {foreach $data.records as $record}
                                    <tr class="list-item">
                                        <td id="list_id">{$record.id}</td>
                                        <td>{$record.albumName}</td>
                                        <td>{$record.artistName}</td>
                                        <td><span class="label label-warning">有效</span></td>
                                    </tr>
                                {/foreach}
                            {/nocache}
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="text-align: center">{nocache}{$data.page_list} {/nocache}</div>
</section>