			<!-- Main Content -->
			<div class="main-content">
				<section class="section">
					<div class="section-header">
						<h1>Dosen</h1>
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
										<?php foreach($dosen as $dsn): ?>
										<h6 class="mb-2"><?= $dsn->kode_dosen; ?></h6>
										<h5><?= $dsn->nama_dosen; ?></h5>
										<table>
											<tr>
												<td>Email </td>
												<td>: <?= $dsn->email ?></td>
											</tr>
											<tr>
												<td>No Telp </td>
												<td>: <?= $dsn->no_telp ?></td>
											</tr>
										</table>
										<?php endforeach; ?>

										<hr class="mb-4">
										<h5>Mata Kuliah</h5>

										<div class="table-responsive">
											<table class="table table-striped" id="table-1">
												<thead>
													<tr>
														<th>Kelas</th>
														<th>Mata Kuliah</th>
														<th>SKS</th>
													</tr>
												</thead>
												<?php foreach($matakuliah as $mk): ?>
												<tr>
													<td><?= $mk->nama_kelas ?></td>
													<td><?= $mk->nama_mk ?></td>
													<td><?= $mk->sks ?></td>
												</tr>
												<?php endforeach; ?>
												<tbody>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
