class PontosController < ApplicationController
  load_and_authorize_resource
  # GET /pontos
  # GET /pontos.xml
  before_filter :ponto_lotacao
  def index
    @pontos = Ponto.da_lotacao(@lotacao.id).paginate :page => params[:page], :order => 'created_at DESC', :per_page => 10

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pontos }
    end
  end

  # GET /pontos/1
  # GET /pontos/1.xml
  def show
    @ponto = Ponto.find(params[:id])
    @range_dias = @ponto.data.at_beginning_of_month..@ponto.data.at_end_of_month

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ponto }
    end
  end

  # GET /pontos/new
  # GET /pontos/new.xml
  def new
    @ponto = Ponto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ponto }
    end
  end

  def exportar_em_pdf
    @ponto = Ponto.find(params[:ponto_id])
    @range_dias = @ponto.data.at_beginning_of_month..@ponto.data.at_end_of_month
    @funcionario = @ponto.funcionario
    @lotacao = @ponto.lotacao
    respond_to do |format|
    format.html # index.html.erb
    format.pdf do
        render :pdf =>"ponto - #{@funcionario.pessoa.nome}", # OPTIONAL
           :wkhtmltopdf=>"/usr/bin/wkhtmltopdf",
            :zoom => 0.8 ,
             :margin=>{1,1,1,1},
               :orientation => 'Portrait'

  end
  end
  end

  # GET /pontos/1/edit
  def edit
    @ponto = Ponto.find(params[:id])
  end

  # POST /pontos
  # POST /pontos.xml
  def create
    @ponto = Ponto.new(params[:ponto])
    @orgao = @lotacao.orgao
    @departamento = @lotacao.departamento

    respond_to do |format|
      if @ponto.save
        format.html { redirect_to(orgao_departamento_pontos_path(@orgao.id,@departamento.id,:funcionario_id=>@funcionario.id), :notice => 'Ponto cadastrado com sucesso.') }
        format.xml  { render :xml => @ponto, :status => :created, :location => @ponto }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ponto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pontos/1
  # PUT /pontos/1.xml
  def update
    @ponto = Ponto.find(params[:id])

    respond_to do |format|
      if @ponto.update_attributes(params[:ponto])
        format.html { redirect_to(@ponto, :notice => 'Ponto atualizado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ponto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pontos/1
  # DELETE /pontos/1.xml
  def destroy
    @ponto = Ponto.find(params[:id])
    @ponto.destroy

    respond_to do |format|
      format.html { redirect_to(:back,:alert=>"Ponto apagado com sucesso") }
      format.xml  { head :ok }
    end
  end
  private



  def ponto_lotacao
   @pessoa = Pessoa.find(params[:pessoa_id])
   @funcionario = @pessoa.funcionarios.find(params[:funcionario_id])
   @lotacao = @funcionario.lotacoes.atual.find(params[:lotacao_id])
   end
end