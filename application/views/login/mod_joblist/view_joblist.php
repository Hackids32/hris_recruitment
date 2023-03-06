<div class="row">
    <?php
    foreach ($record->result_array() as $row) {
    ?>
        <div class="col-md-4">
            <div class="box box-solid">
                <div class="box-header with-border">
                    <i class="fa fa-briefcase"></i>
                    <h3 class="box-title"><?php echo $row['judul']; ?></h3>
                </div>
                <div class="box-body">
                    <center>
                        <a href="joblist_detail"><button class="btn btn-primary"><i class="fa fa-chevron-right"></i> Detail</button></a>
                    </center>
                </div>
            </div>
        </div>
    <?php
    }
    ?>
</div>