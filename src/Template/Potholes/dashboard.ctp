<div class="container mt-5 ml-lg-5 footer-adjustment">
    <div class="row">
        <?php echo $this->element('sidebar/sticky-sidebar');?>
        <div class="col-lg-8">
            <?php echo $this->Form->create(false, ['url' => ['action' => 'upload_pothole', 'controller' => 'potholes'], 'type' => 'file']) ;?>
            <div class="row">
                <div class="col-lg-6">
                    <?php
                        echo $this->Form->control(
                            'location', [
                            'label' =>false,
                            'class' => 'form-control mb-4',
                            'placeholder'=>'Nearest Location (G-Maps) *',
                            'id'=>'location',
                            'required'
                        ]);
                    ?> 

                    <?php
                        echo $this->Form->control(
                            'address', [
                            'label' =>false,
                            'class' => 'form-control mb-4',
                            'placeholder'=>'Nearest Landmark *',
                            'id'=>'landmark',
                            'required'
                        ]);
                    ?> 


                    <?php
                        echo $this->Form->control(
                            'description', [
                            'label' =>false,
                            'class' => 'form-control mb-4',
                            'placeholder'=>'Description',
                            'id'=>'description',
                            'rows' => 2
                        ]);
                    ?>
                    <div>
                        <?php 
                            echo $this->Form->control(
                                'constituency_id', [
                                'empty' => 'Select Constituency *',
                                'options' => $constituencies,
                                'type' => 'select',
                                'class' => 'form-control mb-4',
                                'label' => false,
                                'required'
                            ]);
                        ?>
                    </div>
                    <fieldset class="form-group">
                        <div class="row">
                            <legend class="col-form-label col-sm-6 pt-0">Select Severity</legend>
                            <div class="col-sm-6">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="severity" id="severity-low" value="1">
                                    <strong>
                                        <label class="form-check-label" for="severity-low" style="color: green;">
                                            Low
                                        </label>
                                    </strong>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="severity" id="severity-moderate" value="2" checked>
                                    <strong>
                                    <label class="form-check-label" for="severity-moderate" style="color: orange;">
                                            Moderate
                                        </label>
                                    </strong>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="severity" id="severity-high" value="3">
                                    <strong>
                                        <label class="form-check-label" for="severity-high" style="color: red;">
                                            High
                                        </label>
                                    </strong>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="col-lg-6">
                    <div class="input-group-prepend mb-3">
                        <span class="input-group-text" id="inputGroupFileAddon01">ADD UPTO 3 SUPPORTING IMAGE PROOFS</span>
                    </div>
                    <div class="row">
                        <div class="col-lg-4">
                            <?php
                                echo $this->Form->control(
                                    'image_1', [
                                    'type' => 'file',
                                    'class' => 'dropify',
                                    "data-allowed-file-extensions"=>"jpg png jpeg",
                                    'label' => 'Proof 1 (Required) *',
                                    'required' => 'required'
                                    ]);
                            ?> 
                        </div>
                        <div class="col-lg-4">
                            <?php
                                echo $this->Form->control(
                                    'image_2', [
                                    'type' => 'file',
                                    'class' => 'dropify',
                                    "data-allowed-file-extensions"=>"jpg png jpeg",
                                    'label' => 'Proof 2 (Optional)'
                                    ]);
                            ?> 
                        </div>
                        <div class="col-lg-4">
                            <?php
                                echo $this->Form->control(
                                    'image_3', [
                                    'type' => 'file',
                                    'class' => 'dropify',
                                    "data-allowed-file-extensions"=>"jpg png jpeg",
                                    'label' => 'Proof 3 (Optional)'
                                    ]);
                            ?> 
                        </div>
                    </div>
                </div>
                <div class="justify-content-center mt-1 ml-2">
                    <button class="btn btn-mdb-color">Submit</button>
                </div>
            </div>
            <?php echo $this->Form->end();?>
            <hr class="my-2">
            <h3>Recent news...</h3>
            <div class="row">
                <div class="col-lg-6">
                    <?php 
                        echo $this->Form->control(
                            'constituency_id', [
                            'empty' => 'All',
                            'options' => $constituencies,
                            'type' => 'select',
                            'class' => 'form-control mb-4',
                            'label' => false,
                            'required',
                            'default' => $filter,
                            "id" => "constituency-filter"
                        ]);
                    ?>            
                </div>
            </div>
            <?php if(!empty($potholes)): ?>
                <div class="row">
                    <?php foreach($potholes as $pothole): ?>
                        <?php 
                            if($pothole['severity'] == 1) {
                                $severityClass = "green";
                                $severityVerb = "Low";
                            }
                            else if($pothole['severity'] == 2) {
                                $severityClass = "orange";
                                $severityVerb = "Moderate";
                            }
                            else {
                                $severityClass = "red";
                                $severityVerb = "High";
                            }
                        ;?>
                        <?php $primaryImage = json_decode($pothole['image'], TRUE)['image_0'];?>
                        <div class="col-sm-12 col-lg-9 mt-5">
                            <div class="card h-100">
                                <img class="card-img-top" src="http://mtw.sj/<?php echo $primaryImage;?>" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title"><?php echo $pothole['location'];?></h5>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <p class="mb-0">Constituency: <a href="#!" class="badge badge-primary"><?php echo $pothole['constituency']['name'];?></a></p>
                                            <p>Severity: <span class="badge badge-pill <?php echo $severityClass;?>"><?php echo $severityVerb;?></span></p>
                                        </div>
                                        <div class="col-lg-6">
                                            <p class="card-title">Verifications: 
                                                <span class="badge badge-default"><?php echo count($pothole['pothole_verifications']);?></span>
                                            </p>
                                            <a class="" data-toggle="modal" data-target="#basicExampleModal">Verify Now: <i class="fa fa-flash fa-lg red-text"></i></a>

                                        </div>
                                    </div>
                                    <div class="row text-left">
                                        <div class="col-lg-12">
                                            <p class="card-text"><?php echo $pothole['description'];?></p>
                                            <a href="/potholes/view/<?php echo $pothole['id'];?>" class="btn btn-mdb-color">Read More</a>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endforeach;?>             
                </div>
            <?php else: ?>
                <h4>No matching results</h4>
            <?php endif;?>
            <?php
                $this->Paginator->setTemplates([
                    'prevActive' => '<li class="page-item"><a class="page-link" href="{{url}}">{{text}}</a></li>'
                ]);
                $this->Paginator->setTemplates([
                    'prevDisabled' => '<li class="page-item disabled"><a class="page-link" href="{{url}}">{{text}}</a></li>'
                ]);                   
                $this->Paginator->setTemplates([
                    'number' => '<li class="page-item"><a class="page-link" href="{{url}}">{{text}}</a></li>'
                ]);
                $this->Paginator->setTemplates([
                    'nextActive' => '<li class="page-item"><a class="page-link" href="{{url}}">{{text}}</a></li>'
                ]);
                $this->Paginator->setTemplates([
                    'nextDisabled' => '<li class="page-item disabled"><a class="page-link" href="{{url}}">{{text}}</a></li>'
                ]);
                $this->Paginator->setTemplates([
                    'current' => '<li class="page-item active"><a class="page-link" href="{{url}}">{{text}}</a></li>'
                ]);
            ?>
            <nav class="mt-5">
                <ul class="pagination pagination-lg">
                    <?= $this->Paginator->prev('< ' . __('previous')) ?>
                    <?= $this->Paginator->numbers() ?>
                    <?= $this->Paginator->next(__('next') . ' >') ?>
                </ul>
            </nav>
        </div>
    </div>
</div>

<div class="modal fade" id="basicExampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>


        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places&key=AIzaSyAoB4srvQLED31oxlKzgLnKcbilJWws-38"></script>
        <script>
            function init() {
                var input = document.getElementById('location');
                var autocomplete = new google.maps.places.Autocomplete(input);
            }
 
            google.maps.event.addDomListener(window, 'load', init);
        </script>  
