<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WucEvent.ascx.cs" Inherits="bootstraptest01.WucEvent" %>


<div class="row wuc-event">
        <div class="col-md-12">
          <div class="panel panel-default">
            <div class="panel-heading">
              <br>
              <div class="row">
                <div class="hidden-xs col-xs-8 col-md-8 col-lg-8">
                  <img class="media-object pull-left visible-md img-rounded img-responsive" src="https://lorempixel.com/650/350">
                  <div class="media">
                    <a class="pull-left" href="#">    <img class="media-object visible-sm img-responsive" src="https://lorempixel.com/700/400">  </a>
                    <div class="media-body"></div>
                  </div>
                </div>
                <div class="pull-left col-md-4 col-lg-8">
                  <img src="https://lorempixel.com/780/400" class="visible-lg img-rounded img-responsive">
                </div>
                <div class="col-sm-4 col-md-4">
                  <div class="media">
                    <a class="pull-left" href="#">      </a>
                    <div class="media-body"></div>
                  </div>
                   
                  
                    
                  
                    <h3 class="event-heading pull-left" runat="server" id="EventHeading">Den romantiske have i efter&aring;rets farver</h3>
                    <img src="https://lorempixel.com/175/100" class="pull-center visible-xs img-responsive">
                    <p class="lead event-location text-muted" runat="server" id="location"></p>
                  
                  <ul class="list-group">
                    <li class="list-group-item" runat="server" id="EventStart">17, oktober, 2013</li>
                    <li class="list-group-item" runat="server" id="Hour">kl 18:00</li>
                    <li class="list-group-item" runat="server" id="PriceTag">pris: 150 &nbsp;kr</li>
                    <li class="list-group-item" runat="server" id="AgeGroup">alder: 30-40 &aring;r</li>
                    
                    <li class="list-group-item text-info" runat="server" id="LastSignupDate">Tilmeldingsfrist:  &aring;r</li>
                  </ul>
                  <asp:Button ID="ButtonSignup" runat="server" Text="Tilmeld dig" CssClass="btn btn-large btn-custom-spin" OnClick="ButtonSignup_Click" />
                    <p class="list-group-item" runat="server" id="FreeSeats">Ledige pladser: &aring;r</p>
                </div>
              </div>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-6">
                  <h4 runat="server" id="EventHookline">Den romantiske have er et fantastisk sted</h4>
                  <p runat="server" id="EventInfoText">Placeat nemo cum veritatis placeat aut modi mollit ullamco quae necessitatibus amet veniam consequatur dicta amet minima soluta voluptate nam molestias eius aliquam minus tempor nostrud deserunt eveniet. Quibusdam incidunt sit numquam veritatis nesciunt nam iure natus, consectetur aliquam nostrud eu anim eum anim incidunt dolorem laborum distinctio error libero elit animi voluptatum, tenetur possimus voluptatibus ipsa animi. Sint eos maxime a deleniti doloribus rem ipsum, ab ducimus consequatur, tempora, doloremque atque dolor voluptatem veritatis aut. Molestias quam nobis harum odit adipisicing incidunt nisi, quos, expedita tempore eiusmod ipsa.</p>
                </div>
                <div class="col-md-6">
                  <h4>Alt det praktiske</h4>
                  <p>Porro anim sint sapiente occaecati, quo adipisicing sequi excepteur, ullam ab ratione fugit qui. Maiores irure laboriosam aliquid nobis anim delectus, asperiores consequat, sint non, voluptates corrupti exercitationem quia magni cumque. Voluptatem modi commodi vitae quo nihil fugiat maxime minima officia voluptatibus incididunt.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>