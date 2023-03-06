        <?php $users = $this->model_users->users_edit($this->session->username)->row_array(); ?>
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="<?php echo base_url(); ?>/asset/admin/dist/img/users.gif" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
              <p><?php echo $users['nama_lengkap']; ?></p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>

          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header" style='color:#fff; text-transform:uppercase; border-bottom:2px solid #00c0ef'>MENU PENGGUNA</li>
            <li><a href="<?php echo base_url(); ?>login/home"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
            <li><a href="<?php echo base_url(); ?>login/edit_manajemenuser/<?php echo $this->session->username; ?>"><i class="fa fa-user"></i> <span>Edit Profile</span></a></li>
            <li><a href="<?php echo base_url(); ?>login/logout"><i class="fa fa-power-off"></i> <span>Logout</span></a></li>
          </ul>
        </section>