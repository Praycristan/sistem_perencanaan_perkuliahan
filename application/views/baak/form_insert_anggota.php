			<!-- Main Content -->
			<div class="main-content">
				<section class="section">
					<div class="section-header">
						<h1>Anggota BAAK</h1>
						<!-- <div class="section-header-breadcrumb">
							<div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
							<div class="breadcrumb-item"><a href="#">Modules</a></div>
							<div class="breadcrumb-item">Mata Kuliah</div>
						</div> -->
					</div>

					<div class="section-body">
						<div class="card">
							<div class="card-body">
								<div class="row">
									<div class="col-md-6">
										<form method="POST" action="<?= base_url('baak/anggota/insert_anggota')?>" enctype="multipart/form-data">
											<div class="card-header">
												<h4>Form Data Anggota</h4>
											</div>
											<div class="card-body">
												<div class="form-group">
													<label>ID</label>
													<input type="text" name="id" class="form-control">
													<?= form_error('kode', '<div class="text-small text-danger">', '</div>'); ?>
												</div>
												<div class="form-group">
													<label>Nama</label>
													<input type="text" name="nama" class="form-control">
													<?= form_error('nama', '<div class="text-small text-danger">', '</div>'); ?>
												</div>
                                                <div class="form-group">
													<label>Email</label>
													<input type="text" name="email" class="form-control">
													<?= form_error('email', '<div class="text-small text-danger">', '</div>'); ?>
												</div>										
											</div>
											<div class="card-footer text-right">
												<button class="btn btn-danger" type="reset"> <i class="fa fa-undo mr-1"></i>Reset</button>
												<button class="btn btn-primary mr-2" type="submit"> <i class="fa fa-save mr-1">Save</i>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>