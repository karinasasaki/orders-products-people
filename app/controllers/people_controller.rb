class PeopleController < ApplicationController
  before_action :set_person, only: %i[ show edit update destroy ]
  before_action :search

  # GET /people or /people.json
  def index
    @people = Person.all
  end
  def search
    if params[:search].blank?
      @results = Order.where(person_id: params[:id])
    else
      puts 'ENTROU NO SEARCH ============================================='
      @parameter = params[:search]
      @product = Product.where(name: @parameter)
      @orders = Order.where(person_id: params[:id]) 
      puts @orders
      puts @product
      puts 'product ID'
      puts @product.ids
      puts 'orders ID'
      puts @orders.ids
      @orders_details = OrderDetail.where(order_id: @orders.ids, product_id: @product.ids)
      puts 'ordersDetails ID'
      puts @orders_details.ids
      @results = Order.joins(:products).where(products:{ id: @product.ids}).distinct
      puts @results
    end
  end

  # GET /people/1 or /people/1.json
  def show
    if params[:search].blank?
      @results = Order.where(person_id: params[:id])

    else
      puts 'ENTROU NO SEARCH ============================================='
      @parameter = params[:search]
      @product = Product.where(name: @parameter)
      @orders = Order.where(person_id: params[:id]) 
      puts @orders
      puts @product
      puts 'product ID'
      puts @product.ids
      puts 'orders ID'
      puts @orders.ids
      @orders_details = OrderDetail.where(order_id: @orders.ids, product_id: @product.ids)
      puts 'ordersDetails ID'
      puts @orders_details.ids
      @results = Order.joins(:products).where(products:{ id: @product.ids}).distinct
      puts @results
       
    end
    
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people or /people.json
  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to person_url(@person), notice: t('notice.person.created') }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1 or /people/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to person_url(@person), notice: t('notice.person.updated') }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1 or /people/1.json
  def destroy
    @person.destroy

    respond_to do |format|
      format.html { redirect_to people_url, notice: t('notice.person.destroyed') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_params
      params.require(:person).permit(:name, :search)
    end
end
