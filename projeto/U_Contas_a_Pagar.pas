unit U_Contas_a_Pagar;

interface

uses U_Cad_Heranca_Frame, FMTBcd, Menus, uniMainMenu, uniFileUpload, DB,
  uniTimer, uniCheckBox, uniEdit, uniBitBtn, uniBasicGrid, uniDBGrid, uniDBText,
  uniDBEdit, uniButton, uniSpeedButton, uniDBComboBox, uniDateTimePicker,
  uniDBDateTimePicker, uniMultiItem, uniComboBox, ComboboxYeni, uniLabel,
  uniImage, uniGUIClasses, uniRadioButton, uniPanel, DBClient, uniImageList, 
  uniToolBar, Classes, Controls, uniGUIBaseClasses, SysUtils, uniGUIFrame,
  U_Filtro_Calendario, uniGUIForm, uniGUIAbstractClasses,  uADCompClient, uADStanIntf,
  uADStanOption, uADStanParam, uADStanError, uADDatSManager, uADPhysIntf,
  uADDAptIntf, uADStanAsync, uADDAptManager, uADCompDataSet, uniStatusBar, uniScrollBox,
  uniPageControl;

type
  TFrameContas_a_Pagar = class(TFrameCad_Heranca_Frame)
    dbg_pesquisa: TUniDBGrid;
    bt_pagar: TUniToolButton;
    bt_anexar: TUniToolButton;
    DSPagamento: TDataSource;
    Timer: TUniTimer;
    DSAnexo: TDataSource;
    FileUpload: TUniFileUpload;
    pn_filtros_avancados: TUniPanel;
    bt_pesquisa: TUniBitBtn;
    rdb_pagas: TUniRadioButton;
    rdb_a_pagar: TUniRadioButton;
    UniRadioButton1: TUniRadioButton;
    data_inicial: TUniDateTimePicker;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    data_final: TUniDateTimePicker;
    edt_pesq_descricao: TUniEdit;
    UniLabel6: TUniLabel;
    UniLabel8: TUniLabel;
    edt_pesq_fornecedor: TUniEdit;
    edt_pesq_num_doc: TUniEdit;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    edt_pesq_tipo_despesa: TUniEdit;
    pn_meses: TUniPanel;
    pn_ano: TUniPanel;
    bt_ano_seguinte: TUniBitBtn;
    bt_ano_anterior: TUniBitBtn;
    bt_set: TUniBitBtn;
    bt_mai: TUniBitBtn;
    bt_abr: TUniBitBtn;
    bt_mar: TUniBitBtn;
    bt_fev: TUniBitBtn;
    bt_jan: TUniBitBtn;
    bt_ago: TUniBitBtn;
    bt_dez: TUniBitBtn;
    bt_jul: TUniBitBtn;
    bt_jun: TUniBitBtn;
    bt_nov: TUniBitBtn;
    bt_out: TUniBitBtn;
    chk_filtros_avancados: TUniCheckBox;
    lb_ano: TUniLabel;
    pn_tipo: TUniPanel;
    rdb_tip_normal: TUniRadioButton;
    rdb_tip_recorrente: TUniRadioButton;
    rdb_tip_parcelado: TUniRadioButton;
    UniImage2: TUniImage;
    UniImage3: TUniImage;
    UniImage4: TUniImage;
    pn_principal: TUniPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    cmb_tipo_despesa: TComboBoxYeni;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    cmb_fornecedor: TComboBoxYeni;
    UniLabel5: TUniLabel;
    lb_n_parcelas: TUniLabel;
    UniLabel7: TUniLabel;
    lb_forma_pagamento: TUniLabel;
    DB_Descricao: TUniDBEdit;
    DB_Data_Vencimento: TUniDBDateTimePicker;
    DB_Periodo: TUniDBComboBox;
    DB_Documento: TUniDBEdit;
    UniSpeedButton1: TUniSpeedButton;
    UniSpeedButton2: TUniSpeedButton;
    DB_Parcelas: TUniDBNumberEdit;
    DB_Valor: TUniDBEdit;
    pn_inf_pagamento: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    bt_remove_baixa: TUniBitBtn;
    bt_informacoes: TUniBitBtn;
    pn_inf_juros: TUniPanel;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    DB_Val_Multa: TUniDBEdit;
    DB_Val_Juros: TUniDBEdit;
    DB_Val_Desconto: TUniDBEdit;
    Popup: TUniPopupMenu;
    ExportaParaExcel1: TUniMenuItem;
    UniDBText1: TUniDBText;
    UniLabel16: TUniLabel;
    ADQuery: TADQuery;
    ADQueryID_MASTER: TIntegerField;
    ADQueryID_EMPRESA: TIntegerField;
    ADQueryID_CAP_AD: TADAutoIncField;
    ADQueryID_CAP_AP: TIntegerField;
    ADQueryDESCRICAO_DOCUM: TWideStringField;
    ADQueryNUM_DOCUM: TWideStringField;
    ADQuerySERIE_DOCUM: TWideStringField;
    ADQueryTIPO_DOCUM: TWideStringField;
    ADQueryTIPO_DOCUM_SITUACAO: TWideStringField;
    ADQueryPERIODO: TWideStringField;
    ADQueryNUM_PARCELAS: TIntegerField;
    ADQueryVAL_PARCELA: TBCDField;
    ADQueryVAL_JUROS: TBCDField;
    ADQueryVAL_MULTA: TBCDField;
    ADQueryVAL_DESCONTO: TBCDField;
    ADQueryID_TIPO_DESPESA: TIntegerField;
    ADQueryDESCRICAO_DESPESA: TWideStringField;
    ADQueryID_F_C: TIntegerField;
    ADQueryRAZAO_SOCIAL: TWideStringField;
    ADQueryDAT_VENCIMENTO: TDateField;
    ADQueryDAT_PAGAMENTO: TDateField;
    ADQueryTIP_PAGAMENTO: TWideStringField;
    ADQueryVAL_PAGO: TFMTBCDField;
    ADQueryIMG_STATUS: TStringField;
    ADQueryIMG_TIPO: TStringField;
    ADQueryPARCELA: TIntegerField;
    lb_parcela: TUniLabel;
    ADQueryPagamento: TADQuery;
    ADQueryAnexo: TADQuery;
    ADQueryAnexoID_CAP_AD_ANEXO: TADAutoIncField;
    ADQueryAnexoNOME_ANEXO: TWideStringField;
    ADQueryAnexoANEXO: TBlobField;
    ADQueryPagamentoID_CAP_AP_VALORES: TADAutoIncField;
    ADQueryPagamentoDAT_PAGAMENTO: TDateField;
    ADQueryPagamentoVALOR: TBCDField;
    ADQueryPagamentoTIPO: TWideStringField;
    ADQueryPagamentoNOME_CONTA: TWideStringField;
    ADQueryPagamentoNOME_BANCO: TWideStringField;
    pn_inf_anexo: TUniPanel;
    UniDBGrid2: TUniDBGrid;
    bt_anexar_mais: TUniBitBtn;
    bt_excluir_anexo: TUniBitBtn;
    procedure rdb_tip_normalClick(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure UniFrameCreate(Sender: TObject);
    procedure bt_salvarClick(Sender: TObject);
    procedure UniSpeedButton1Click(Sender: TObject);
    procedure UniSpeedButton2Click(Sender: TObject);
    procedure UniImage1Click(Sender: TObject);
    procedure DB_ParcelasExit(Sender: TObject);
    procedure bt_pagarClick(Sender: TObject);
    procedure edt_pesq_descricaoKeyPress(Sender: TObject; var Key: Char);
    procedure bt_remove_baixaClick(Sender: TObject);
    procedure DB_ValorExit(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure edt_val_multaExit(Sender: TObject);
    procedure edt_val_descontoExit(Sender: TObject);
    procedure edt_val_jurosExit(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bt_informacoesClick(Sender: TObject);
    procedure bt_excluirClick(Sender: TObject);
    procedure DSStateChange(Sender: TObject);
    procedure bt_cancelarClick(Sender: TObject);
    procedure FileUploadCompleted(Sender: TObject; AStream: TFileStream);
    procedure bt_anexar_maisClick(Sender: TObject);
    procedure bt_anexarClick(Sender: TObject);
    procedure bt_ano_seguinteClick(Sender: TObject);
    procedure bt_ano_anteriorClick(Sender: TObject);
    procedure chk_filtros_avancadosClick(Sender: TObject);
    procedure bt_pesquisaClick(Sender: TObject);
    procedure bt_janClick(Sender: TObject);
    procedure dbg_pesquisaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbg_pesquisaDblClick(Sender: TObject);
    procedure cmb_tipo_despesaClick(Sender: TObject);
    procedure cmb_fornecedorClick(Sender: TObject);
    procedure bt_excluir_anexoClick(Sender: TObject);
    procedure UniDBGrid2DblClick(Sender: TObject);
    procedure ExportaParaExcel1Click(Sender: TObject);
    procedure ADQueryIMG_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADQueryIMG_TIPOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure dbg_pesquisaColumnSort(Column: TUniDBGridColumn;
      Direction: Boolean);
  private
    { Private declarations }
    Conexao                                                                     :TADConnection;
    Transaction                                                                 :TADTransaction;
    SQLQuery                                                                    :TADQuery;

    pos_cds, mes, ano                                                           :Integer;
    pesquisa_avancada, nao_valida_edicao                                        :Boolean; //Indica se Foi Selecionada a Pesquisa Avan�ada

    Filtro                                                                      :TFiltro; //Utilizado Para controle do Mes e Ano Selecionado

    procedure atualiza_info_pag(id_cap_ap: Integer);                            //Atualiza Os Valores Pagos da AP
    procedure atualiza_info_anexo(id_cap_ad :Integer);                          //Atualiza as Informa��es dos Anexos
    procedure status_rd_button;                                                 //Atualiza o Status do Rdb

    function documento_pago(id_ap :Integer): Boolean;                           //Verifica se AP Passado como Par�metro est� Paga.
    function insere_anexo(id_ad: Integer): String;                              //Insere Anexo
    procedure pesquisa(pesquisa_avancada:Boolean; mes, ano :Integer);           //Realiza a pesquisa Fixa(Ano/Mes) ou a pesquisa avan�ada.
  public
    { Public declarations }
  end;

implementation

uses U_Sessao, MainModule, Main, U_Global, U_Verifica_Campo_Null, U_Financeiro,
  U_Cad_Cliente_Fornecedor, U_Cad_Tipo_Despesa, U_Carrega_Combo, U_DM, Dialogs,
  U_JS_Humane, ServerModule, Windows, U_Anexos, U_Funcao_Exporta_Html,
  U_Confirmacao_Exclusao, U_DM_Imagens, uniGUIApplication,
  U_Confirmacao_Pagamento_Recebimento;

{$R *.dfm}

procedure TFrameContas_a_Pagar.bt_anexarClick(Sender: TObject);
begin
  inherited;
  FileUpload.Execute;
end;

procedure TFrameContas_a_Pagar.bt_anexar_maisClick(Sender: TObject);
begin
  inherited;
  FileUpload.Execute;
end;

procedure TFrameContas_a_Pagar.bt_ano_anteriorClick(Sender: TObject);
begin
  inherited;
  lb_ano.Caption  := IntToStr(StrToInt(lb_ano.Caption) - 1);

  ano               := StrToInt(lb_ano.Caption);
  pesquisa_avancada := False;

  pesquisa(pesquisa_avancada,mes,ano);
end;

procedure TFrameContas_a_Pagar.bt_ano_seguinteClick(Sender: TObject);
begin
  inherited;
  lb_ano.Caption  := IntToStr(StrToInt(lb_ano.Caption) + 1);

  ano               := StrToInt(lb_ano.Caption);
  pesquisa_avancada := False;

  pesquisa(pesquisa_avancada,mes,ano);
end;

procedure TFrameContas_a_Pagar.bt_cancelarClick(Sender: TObject);
begin
  inherited;
  if Transaction.Active then
    Transaction.Rollback;
end;

procedure TFrameContas_a_Pagar.bt_excluirClick(Sender: TObject);
var
  tipo_docum  :String;
  Financeiro  :TFinanceiro;
  id_ad, id_ap:Integer;
begin
  MessageDlg('Deseja realmente excluir?', mtConfirmation, mbYesNo, procedure(Res: Integer)
  begin
    if Res = mrYes then
      begin
        try
          if Not DS.DataSet.IsEmpty then
            begin
              SQLQuery.SQL.Clear;
              SQLQuery.SQL.Add('SELECT TIPO_DOCUM FROM CAP_AD                   '+
                               ' WHERE ID_MASTER     = :P00                     '+
                               '   AND ID_EMPRESA    = :P01                     '+
                               '   AND ID_CAP_AD     = :P02                     ');
              SQLQuery.Params[00].AsInteger  := ID.id_glo_master;
              SQLQuery.Params[01].AsInteger  := ID.id_glo_empresa;
              SQLQuery.Params[02].AsInteger  := DS.DataSet.FieldByName('ID_CAP_AD').AsInteger;
              SQLQuery.Open;

              tipo_docum  := SQLQuery.Fields[0].AsString;
              id_ad       := DS.DataSet.FieldByName('ID_CAP_AD').AsInteger;
              id_ap       := DS.DataSet.FieldByName('ID_CAP_AP').AsInteger;

              if tipo_docum = 'R' then //Parcelas Recorrentes
                begin
                  FormConfirmacao_Exclusao.ShowModal;
                  FormConfirmacao_Exclusao.exclusao_parcela_recorrente(id_ad, id_ap,'CAP');
                  Timer.Enabled := True;

                  Exit;
                end;
              if (tipo_docum = 'N') or (tipo_docum = 'P') then //Parcelas Normais e Parceladas
                begin
                  if Not(Transaction.Active) then
                    Transaction.StartTransaction;

                  Financeiro  := exclusao_ap(id_ad, id_ap,0,tipo_docum,Conexao);

                  if Financeiro.Alerta then
                    Exit;

                  if Financeiro.Erro then
                    raise Exception.Create(Financeiro.Msg_Erro);
                end;

             DS.DataSet.Delete;
             Transaction.Commit;

             UniStatusBar1.Panels.Items[0].Text:= 'Exclus�o efetuada com Sucesso.';
             humane.success('<div> <p><img src= imagens/32/empty.png </> '+
                            'Exclus�o efetuada com Sucesso.</p> </div>',2500,True);
           end
          else
            UniStatusBar1.Panels.Items[0].Text:= 'N�o existem registros para serem excluidos!';
         except
           on e: exception do
             begin
               DS.DataSet.Cancel;
               Transaction.Rollback;
               if Copy(E.Message,0,59) = '[FireDAC][Phys][MySQL] Cannot delete or update a parent row' then
                begin
                  ShowMessage('Aten��o!<br><br> '+
                              '<div> <p><img src="imagens\warning.png" align="left"/> N�o � possivel excluir, o mesmo possui depend�ncias com outros regitros!</p> </div>');
                end
               else
                 RelatorioErro(String(TUniFrame(Self).Name),String(TUniFrame(Sender).Name),e.UnitName,e.ClassName,e.Message);

               UniStatusBar1.Panels.Items[0].Text:='Exclus�o Cancelada!';
               Exit;
             end;
         end;
      end;
  end
  );

end;

procedure TFrameContas_a_Pagar.bt_excluir_anexoClick(Sender: TObject);
begin
  inherited;
  SQLQuery.SQL.Clear;
  SQLQuery.SQL.Add('DELETE FROM CAP_AD_ANEXO            '+
                   ' WHERE ID_MASTER        = :P00      '+
                   '   AND ID_EMPRESA       = :P01      '+
                   '   AND ID_CAP_AD_ANEXO  = :P02      ');
  SQLQuery.Params[00].AsInteger  := ID.id_glo_master;
  SQLQuery.Params[01].AsInteger  := ID.id_glo_empresa;
  SQLQuery.Params[02].AsInteger  := DSAnexo.DataSet.FieldByName('ID_CAP_AD_ANEXO').AsInteger;
  SQLQuery.ExecSQL;

  if Not(DSAnexo.DataSet.isEmpty) then
    DSAnexo.DataSet.Delete;
end;

procedure TFrameContas_a_Pagar.bt_informacoesClick(Sender: TObject);
begin
  inherited;
  if pn_inf_juros.Visible then
    pn_inf_juros.Visible  := False
  else
    pn_inf_juros.Visible  := True;
end;

procedure TFrameContas_a_Pagar.bt_janClick(Sender: TObject);
begin
  inherited;
  Filtro  := controles(TUniFrame(Self),pn_meses,TUniBitBtn(Sender),lb_ano);

  mes               := Filtro.mes;
  ano               := Filtro.ano;
  pesquisa_avancada := False;

  pesquisa(pesquisa_avancada,mes,ano);
end;

procedure TFrameContas_a_Pagar.bt_pagarClick(Sender: TObject);
begin
  inherited;
  FormConfirmacao_Pagamento_Recebimento.ShowModal;
  FormConfirmacao_Pagamento_Recebimento.pagamento(DS.DataSet.FieldByName('ID_CAP_AP').AsInteger,'CAP', Conexao);
  Timer.Enabled := True;
end;

procedure TFrameContas_a_Pagar.bt_pesquisaClick(Sender: TObject);
begin
  inherited;
  Filtro  := controles_remove_filtro(TUniFrame(Self),pn_meses);

  mes               := Filtro.mes;
  ano               := Filtro.ano;

  pesquisa_avancada := True;
  pesquisa(pesquisa_avancada,mes,ano);
end;

procedure TFrameContas_a_Pagar.bt_salvarClick(Sender: TObject);
var
  id_ad, id_ap                                                                  :Integer;
  Financeiro                                                                    :TFinanceiro;
  des_docum, docum, ser_docum, tipo, periodo, parcelas, id_tip_despesa,
  id_fornecedor                                                                 :String;
  valor, valor_juros, valor_multa, valor_desconto                               :Real;
  vencimento                                                                    :Tdate;
begin
  //inherited;
  if Verifica_Edit(TUniForm(Self)) then
    begin
      try
        if Not(Transaction.Active) then
          Transaction.StartTransaction;

        RemoveAspas(TUniForm(Self));

        des_docum       := DB_Descricao.Text;
        docum           := DB_Documento.Text;
        ser_docum       := '0';
        id_tip_despesa  := cmb_tipo_despesa.Value;
        id_fornecedor   := cmb_fornecedor.Value;
        vencimento      := DB_Data_Vencimento.Field.AsDateTime;
        valor           := DB_Valor.Field.AsFloat;
        id_ad           := DS.DataSet.FieldByName('ID_CAP_AD').AsInteger;
        id_ap           := DS.DataSet.FieldByName('ID_CAP_AP').AsInteger;

        {Simulando DataSet}
        DS.DataSet.FieldByName('ID_TIPO_DESPESA').AsString   := id_tip_despesa;
        DS.DataSet.FieldByName('DESCRICAO_DESPESA').AsString := cmb_tipo_despesa.Text;
        DS.DataSet.FieldByName('ID_F_C').AsString            := id_fornecedor;
        DS.DataSet.FieldByName('RAZAO_SOCIAL').AsString      := cmb_fornecedor.Text;

        if rdb_tip_normal.Checked then
          begin
            tipo                                          := 'N';
            DS.DataSet.FieldByName('TIPO_DOCUM').AsString := 'N';
            periodo                                       := EmptyStr;
            parcelas                                      := '0';
          end;
        if rdb_tip_recorrente.Checked then
          begin
            if DB_Periodo.Text = EmptyStr then
              begin
                ShowMessage('Periodo N�o Informado!');
                Exit;
              end;
            tipo                                          := 'R';
            DS.DataSet.FieldByName('TIPO_DOCUM').AsString := 'R';
            periodo                                       := DB_Periodo.Text;
            parcelas                                      := '0';
          end;
        if rdb_tip_parcelado.Checked then
          begin
            if DB_Periodo.Text = EmptyStr then
              begin
                ShowMessage('Periodo N�o Informado!');
                Exit;
              end;
            if DB_Parcelas.Text = EmptyStr then
              begin
                ShowMessage('N�mero de Parcelas N�o Informado!');
                Exit;
              end;
            tipo                                           := 'P';
            DS.DataSet.FieldByName('TIPO_DOCUM').AsString  := 'P';
            periodo                                        := DB_Periodo.Text;
            parcelas                                       := DB_Parcelas.Text;
          end;

        if DS.DataSet.State in [dsInsert] then
          begin

            Financeiro := inclui_ad_ap(des_docum, docum, ser_docum, tipo, periodo, parcelas, id_tip_despesa, id_fornecedor, valor, vencimento, Conexao);

            if Financeiro.Erro then
              raise Exception.Create(Financeiro.Msg_Erro);

            DS.DataSet.FieldByName('ID_CAP_AD').AsString := Financeiro.documento;
            DS.DataSet.FieldByName('ID_CAP_AP').AsString := Financeiro.parcela;

            insere_anexo(StrToInt(Financeiro.documento));

            DS.DataSet.Post;
            Transaction.Commit;

            UniStatusBar1.Panels.Items[0].Text := 'Registro inclu�do com Sucesso.';
            humane.success('<div> <img src= imagens/32/tick_blue.png </> '+
                           'Registro inclu�do com Sucesso. </div>',2500,True);
          end;

        if DS.DataSet.State in [dsEdit] then
          begin

            valor_juros     := DB_Val_Juros.Field.AsFloat;
            valor_multa     := DB_Val_Multa.Field.AsFloat;
            valor_desconto  := DB_Val_Desconto.Field.AsFloat;

            Financeiro := altera_ad_ap(id_ad, id_ap, des_docum, docum, tipo, periodo, parcelas, id_tip_despesa, id_fornecedor, valor, valor_juros, valor_multa, valor_desconto, vencimento, Conexao);

            if Financeiro.Erro then
              raise Exception.Create(Financeiro.Msg_Erro);

            insere_anexo(id_ad);

            DS.DataSet.Post;
            Transaction.Commit;

            UniStatusBar1.Panels.Items[0].Text := 'Registro Alterado com Sucesso.';
            humane.success('<div> <img src= imagens/32/tick_blue.png </> '+
                           'Registro alterado com Sucesso. </div>',2500,True);
          end;

      except
        on e: exception do
          begin
            Transaction.Rollback;
            RelatorioErro(String(TUniFrame(Self).Name),String(TUniFrame(Sender).Name),e.UnitName,e.ClassName,e.Message);
          end;
      end;
    end;
end;

procedure TFrameContas_a_Pagar.chk_filtros_avancadosClick(Sender: TObject);
begin
  inherited;
  pn_filtros_avancados.Visible:= chk_filtros_avancados.Checked;
end;

procedure TFrameContas_a_Pagar.cmb_fornecedorClick(Sender: TObject);
begin
  inherited;
  DS.DataSet.Edit;
end;

procedure TFrameContas_a_Pagar.cmb_tipo_despesaClick(Sender: TObject);
begin
  inherited;
  DS.DataSet.Edit;
end;

procedure TFrameContas_a_Pagar.dbg_pesquisaColumnSort(Column: TUniDBGridColumn;
  Direction: Boolean);
begin
  inherited;
  if Direction then
    (DS.DataSet as TADQuery).IndexFieldNames  := Column.FieldName+':A'
  else
    (DS.DataSet as TADQuery).IndexFieldNames  := Column.FieldName+':D';
end;

procedure TFrameContas_a_Pagar.dbg_pesquisaDblClick(Sender: TObject);
begin
  inherited;
  DS.DataSet.Edit;
end;

procedure TFrameContas_a_Pagar.dbg_pesquisaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Button=mbRight then
  begin
    Popup.Popup(Left + X, Top + Y + 180);
  end;
end;

procedure TFrameContas_a_Pagar.DB_ParcelasExit(Sender: TObject);
begin
  inherited;
  if DB_Parcelas.Text <> EmptyStr then
    if DB_Parcelas.Field.AsInteger > 300 then
      begin
        DB_Parcelas.Field.AsInteger := 300;
        ShowMessage('N�mero M�ximo de Parcelas Permitida � 300.');
      end;

end;

procedure TFrameContas_a_Pagar.DB_ValorExit(Sender: TObject);
begin
  inherited;
  FormataValor(TUniEdit(Sender));
end;

procedure TFrameContas_a_Pagar.DSDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if DS.DataSet.State in [dsInsert, dsEdit] then
    begin
      bt_anexar.Visible         := True;
      bt_pagar.Visible          := False;
    end;

  if DS.DataSet.State in [dsBrowse] then
    begin
      //cmb_tipo_despesa.Value    :=  CDS.FieldByName('ID_TIPO_DESPESA').AsString;
      cmb_tipo_despesa.Text     :=  DS.DataSet.FieldByName('DESCRICAO_DESPESA').AsString;

      //cmb_fornecedor.Value      :=  CDS.FieldByName('ID_F_C').AsString;
      cmb_fornecedor.Text       :=  DS.DataSet.FieldByName('RAZAO_SOCIAL').AsString;

      rdb_tip_normal.Checked    :=  DS.DataSet.FieldByName('TIPO_DOCUM').AsString = 'N';
      rdb_tip_recorrente.Checked:=  DS.DataSet.FieldByName('TIPO_DOCUM').AsString = 'R';
      rdb_tip_parcelado.Checked :=  DS.DataSet.FieldByName('TIPO_DOCUM').AsString = 'P';

      bt_anexar.Visible         := False;
      bt_pagar.Visible          := True;

      pn_tipo.Enabled           := False;
      DB_Periodo.Enabled        := False;
      DB_Parcelas.Enabled       := False;

      atualiza_info_anexo(DS.DataSet.FieldByName('ID_CAP_AD').AsInteger);
      pn_inf_anexo.Visible      := Not(DSAnexo.DataSet.IsEmpty);
    end;

  if DS.DataSet.FieldByName('TIP_PAGAMENTO').AsString = 'A' then
    begin
      bt_pagar.Visible          := True;
      pn_inf_pagamento.Visible  := False;
    end;
  if DS.DataSet.FieldByName('TIP_PAGAMENTO').AsString = 'P' then
    begin
      bt_pagar.Visible          := True;
      pn_inf_pagamento.Visible  := True;
      atualiza_info_pag(DS.DataSet.FieldByName('ID_CAP_AP').AsInteger);
    end;
  if DS.DataSet.FieldByName('TIP_PAGAMENTO').AsString = 'T' then
    begin
      bt_pagar.Visible          := False;
      pn_inf_pagamento.Visible  := True;
      atualiza_info_pag(DS.DataSet.FieldByName('ID_CAP_AP').AsInteger);
    end;

  if DS.DataSet.FieldByName('TIPO_DOCUM').AsString = 'N' then
    begin
      lb_forma_pagamento.Visible  := False;
      DB_Periodo.Visible          := False;
      lb_n_parcelas.Visible       := False;
      DB_Parcelas.Visible         := False;
      lb_parcela.Visible          := False;
    end;
  if DS.DataSet.FieldByName('TIPO_DOCUM').AsString = 'R' then
    begin
      lb_forma_pagamento.Visible  := True;
      DB_Periodo.Visible          := True;
      lb_n_parcelas.Visible       := False;
      DB_Parcelas.Visible         := False;
      lb_parcela.Visible          := False;
    end;
  if DS.DataSet.FieldByName('TIPO_DOCUM').AsString = 'P' then
    begin
      lb_forma_pagamento.Visible  := True;
      DB_Periodo.Visible          := True;
      lb_n_parcelas.Visible       := True;
      DB_Parcelas.Visible         := True;
      lb_parcela.Visible          := True;
      lb_parcela.Caption          := '('+
                                     DS.DataSet.FieldByName('PARCELA').AsString+
                                     '/'+
                                     DS.DataSet.FieldByName('NUM_PARCELAS').AsString+
                                     ')';
    end;

  if DS.DataSet.IsEmpty then
    begin
      bt_pagar.Visible            := False;
      pn_inf_pagamento.Visible    := False;
    end;
end;

procedure TFrameContas_a_Pagar.DSStateChange(Sender: TObject);
begin
  inherited;
  if DS.DataSet.State in [dsInsert] then
    begin
      cmb_tipo_despesa.Text               := EmptyStr;
      cmb_fornecedor.Text                 := EmptyStr;
      DS.DataSet.FieldByName('NUM_DOCUM').AsString        := 'S/N';
      DS.DataSet.FieldByName('DAT_VENCIMENTO').AsDateTime := Now;

      pn_tipo.Enabled                     := True;
      pn_principal.Enabled                := True;
      DB_Periodo.Enabled                  := True;
      DB_Parcelas.Enabled                 := True;

      rdb_tip_normal.Checked              := True;
      rdb_tip_recorrente.Checked          := False;
      rdb_tip_parcelado.Checked           := False;

      pn_inf_pagamento.Visible            := False;
      pn_inf_anexo.Visible                := False;
      lb_parcela.Visible                  := False;

      status_rd_button;

      atualiza_info_anexo(DS.DataSet.FieldByName('ID_CAP_AD').AsInteger);

      DB_Descricao.SetFocus;
    end;

  if (DS.DataSet.State in [dsEdit]) and (Not(nao_valida_edicao)) then
    begin
      if documento_pago(DS.DataSet.FieldByName('ID_CAP_AP').AsInteger) then
        begin
          ShowMessage('Para alterar este documento, � necess�rio excluir o pagamento existente.');
          DS.DataSet.Cancel;
          Exit;
        end;

      if Transaction = Nil then
        Transaction.StartTransaction;

      cmb_tipo_despesa.Value      := DS.DataSet.FieldByName('ID_TIPO_DESPESA').AsString;
      cmb_fornecedor.Value        := DS.DataSet.FieldByName('ID_F_C').AsString;

      UniPageControl1.ActivePage  := Tab_Cadastro;
    end;

end;

procedure TFrameContas_a_Pagar.edt_pesq_descricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    bt_pesquisa.Click;
end;

procedure TFrameContas_a_Pagar.edt_val_descontoExit(Sender: TObject);
begin
  inherited;
  FormataValor(TUniEdit(Sender));
end;

procedure TFrameContas_a_Pagar.edt_val_jurosExit(Sender: TObject);
begin
  inherited;
  FormataValor(TUniEdit(Sender));
end;

procedure TFrameContas_a_Pagar.edt_val_multaExit(Sender: TObject);
begin
  inherited;
  FormataValor(TUniEdit(Sender));
end;

procedure TFrameContas_a_Pagar.ExportaParaExcel1Click(Sender: TObject);
begin
  inherited;
  ExportaHtml(DS,'Relatorio Contas a Pagar');
end;

procedure TFrameContas_a_Pagar.FileUploadCompleted(Sender: TObject;
  AStream: TFileStream);
var
  nome_arquivo :String;
begin
  {Convers�o de Byte
  10 mb = 10485760 byte
  http://nutzmann.net/bitsandbytes.htm}
  if Not(DS.DataSet.State in [dsInsert, dsEdit]) then
    DS.DataSet.Edit;

  nome_arquivo       := ExtractFileName(FileUpload.FileName);

  if Not(DSAnexo.DataSet.Active) then
    DSAnexo.DataSet .Open;

  DSAnexo.DataSet.Insert;
  DSAnexo.DataSet.FieldByName('ID_CAP_AD_ANEXO').AsString  := '0';
  DSAnexo.DataSet.FieldByName('NOME_ANEXO').AsString       := nome_arquivo;
  ADQueryAnexoANEXO.LoadFromStream(AStream);
  DSAnexo.DataSet.Post;

  pn_inf_anexo.Visible  :=  True;

end;

function TFrameContas_a_Pagar.insere_anexo(id_ad: Integer): String;
var
  Arquivo   : TStream;
  SQLQuery  : TADQuery;
begin
  try
    SQLQuery := TADQuery.Create(Nil);
    SQLQuery.Connection:= Conexao;

    DSAnexo.DataSet.First;
    while Not(DSAnexo.DataSet.Eof) do
      begin
        if DSAnexo.DataSet.FieldByName('ID_CAP_AD_ANEXO').AsInteger = 0 then
          begin
            Arquivo := DSAnexo.DataSet.CreateBlobStream(DSAnexo.DataSet.FieldByName('ANEXO'), bmRead);

            SQLQuery.SQL.Clear;
            SQLQuery.SQL.Add('INSERT INTO CAP_AD_ANEXO                    '+
                             '           (ID_MASTER,                      '+
                             '            ID_EMPRESA,                     '+
                             '            ID_CAP_AD,                      '+
                             '            NOME_ANEXO,                     '+
                             '            ANEXO)                          '+
                             '    VALUES (:P00, :P01, :P02, :P03, :P04)   ');
            SQLQuery.Params[00].AsInteger := ID.id_glo_master;
            SQLQuery.Params[01].AsInteger := ID.id_glo_empresa;
            SQLQuery.Params[02].AsInteger := id_ad;
            SQLQuery.Params[03].AsString  := DSAnexo.DataSet.FieldByName('NOME_ANEXO').AsString;
            SQLQuery.Params[04].LoadFromStream(Arquivo, ftBlob);
            SQLQuery.ExecSQL;
          end;

        DSAnexo.DataSet.Next;
      end;
  finally
    FreeAndNil(SQLQuery);
    FreeAndNil(Arquivo);
  end;
end;

procedure TFrameContas_a_Pagar.rdb_tip_normalClick(Sender: TObject);
begin
  inherited;
  status_rd_button;
end;

procedure TFrameContas_a_Pagar.TimerTimer(Sender: TObject);
begin
  inherited;

  if ID.alt_inf_pag then //Atualiza as Informa��es em Tela
    begin
      pesquisa(pesquisa_avancada,mes,ano);
      Timer.Enabled := False;
    end;

end;

procedure TFrameContas_a_Pagar.bt_remove_baixaClick(Sender: TObject);
var
  Financeiro                                                                    :TFinanceiro;
  id_cap_ap, id_cap_ap_valores                                                  :Integer;
begin
  try
    if Not(Transaction.Active) then
      Transaction.StartTransaction;

    id_cap_ap_valores := DSPagamento.DataSet.FieldByName('ID_CAP_AP_VALORES').AsInteger;
    id_cap_ap         := DS.DataSet.FieldByName('ID_CAP_AP').AsInteger;

    Financeiro  := remove_baixa_ap(id_cap_ap_valores, id_cap_ap, Conexao);

    if Financeiro.Erro then
      raise Exception.Create(Financeiro.Msg_Erro);

    if Not(Financeiro.Alerta) then
      begin
        atualiza_info_pag(DS.DataSet.FieldByName('ID_CAP_AP').AsInteger);

        nao_valida_edicao                                 := True;
        DS.DataSet.Edit;
        DS.DataSet.FieldByName('TIP_PAGAMENTO').AsString  := Financeiro.tipo;
        DS.DataSet.FieldByName('VAL_PAGO').AsFloat        := Financeiro.saldo_parcela;
        nao_valida_edicao                                 := False;
      end;

  except
    on e: exception do
      begin
        Transaction.Rollback;
        RelatorioErro(String(TUniFrame(Self).Name),String(TUniFrame(Sender).Name),e.UnitName,e.ClassName,e.Message);
      end;
  end;

end;

procedure TFrameContas_a_Pagar.UniDBGrid2DblClick(Sender: TObject);
var
  arquivo       : TStream;
  nome_arquivo  : String;
begin
  inherited;
  try
    arquivo       := DSAnexo.DataSet.CreateBlobStream(DSAnexo.DataSet.FieldByName('ANEXO'), bmRead);
    nome_arquivo  := DSAnexo.DataSet.FieldByName('NOME_ANEXO').AsString;

    nome_arquivo  := StringReplace(nome_arquivo,'.xlsx','.xls',[rfIgnoreCase]);
    nome_arquivo  := StringReplace(nome_arquivo,'.docx','.doc',[rfIgnoreCase]);

    UniSession.SendStream(arquivo, nome_arquivo);
  finally
    FreeAndNil(arquivo);
  end;
end;

procedure TFrameContas_a_Pagar.UniFrameCreate(Sender: TObject);
begin
  inherited;
  {Cria uma Nova Sess�o no Banco de Dados (Utilizado pelas Transa��es)}
  Conexao := TADConnection.Create(Self);
  SessaoFireDac(TUniFrame(Self),Conexao,'utf8');

  Transaction         := TADTransaction.Create(Self);
  SQLQuery            := TADQuery.Create(Self);

  Seta_Conexao_FireDac(TUniFrame(Self), Conexao);

  {Deixando os Filtro Pr� Definidos}
  data_inicial.DateTime := data_atual_bd - 5;
  data_final.DateTime   := data_atual_bd + 25;
  mes                   := StrToInt(FormatDateTime('MM',data_atual_bd));
  ano                   := StrToInt(FormatDateTime('YYYY',data_atual_bd));
  lb_ano.Caption        := FormatDateTime('YYYY',data_atual_bd);
  pesquisa_avancada     := False;

  combo(TUniForm(Self),cmb_tipo_despesa,'TIPO_DESPESA',Conexao);

  combo(TUniForm(Self),cmb_fornecedor,'FORNECEDOR',Conexao);

  pesquisa(pesquisa_avancada,mes,ano);

end;

procedure TFrameContas_a_Pagar.UniFrameDestroy(Sender: TObject);
begin
  inherited;
  Timer.Enabled := False;
end;

procedure TFrameContas_a_Pagar.UniImage1Click(Sender: TObject);
begin
  inherited;
  ShowMessage('Contas Normais Vencem apenas uma �nica vez. <br>  '+
              'Contas Recorrentes sempre ir�o existir, ex: conta de telefone, luz, mensalidade academia. <br> '+
              'Contas Parceladas possuem um numero fixo de vencimentos.');
end;

procedure TFrameContas_a_Pagar.UniSpeedButton1Click(Sender: TObject);
begin
  inherited;
  FormCad_Tipo_Despesa.ShowModal;
end;

procedure TFrameContas_a_Pagar.UniSpeedButton2Click(Sender: TObject);
begin
  inherited;
  FormCad_Cliente_Fornecedor.ShowModal;
end;

procedure TFrameContas_a_Pagar.status_rd_button;
begin
  if rdb_tip_normal.Checked then
    begin
      lb_forma_pagamento.Visible  := False;
      DB_Periodo.Visible          := False;
      lb_n_parcelas.Visible       := False;
      DB_Parcelas.Visible         := False;
    end;
  if rdb_tip_recorrente.Checked then
    begin
      lb_forma_pagamento.Visible  := True;
      DB_Periodo.Visible          := True;
      lb_n_parcelas.Visible       := False;
      DB_Parcelas.Visible         := False;
    end;
  if rdb_tip_parcelado.Checked then
    begin
      lb_forma_pagamento.Visible  := True;
      DB_Periodo.Visible          := True;
      lb_n_parcelas.Visible       := True;
      DB_Parcelas.Visible         := True;
    end;
end;

function TFrameContas_a_Pagar.documento_pago(id_ap: Integer): Boolean;
begin
  SQLQuery.SQL.Clear;
  SQLQuery.SQL.Add('SELECT TIP_PAGAMENTO FROM CAP_AP  '+
                   ' WHERE ID_MASTER     = :P00       '+
                   '   AND ID_EMPRESA    = :P01       '+
                   '   AND ID_CAP_AP     = :P02       ');
  SQLQuery.Params[00].AsInteger := ID.id_glo_master;
  SQLQuery.Params[01].AsInteger := ID.id_glo_empresa;
  SQLQuery.Params[02].AsInteger := id_ap;
  SQLQuery.Open;

  Result  := SQLQuery.FieldByName('TIP_PAGAMENTO').AsString <> 'A';

end;


procedure TFrameContas_a_Pagar.pesquisa(pesquisa_avancada:Boolean; mes, ano :Integer);
begin

  if Not(DS.DataSet.IsEmpty) then
    pos_cds := DS.DataSet.RecNo
  else
    pos_cds := 0;

  ID.alt_inf_pag  := False;

  try
    with ADQuery do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT A.ID_MASTER,                                                  ');
        SQL.Add('       A.ID_EMPRESA,                                                 ');
        SQL.Add('       A.ID_CAP_AD,                                                  ');
        SQL.Add('       B.ID_CAP_AP,                                                  ');
        SQL.Add('       A.DESCRICAO_DOCUM,                                            ');
        SQL.Add('       A.NUM_DOCUM,                                                  ');
        SQL.Add('       A.SERIE_DOCUM,                                                ');
        SQL.Add('       A.TIPO_DOCUM,                                                 ');
        SQL.Add('       A.TIPO_DOCUM_SITUACAO,                                        ');
        SQL.Add('       A.PERIODO,                                                    ');
        SQL.Add('       A.NUM_PARCELAS,                                               ');
        SQL.Add('       B.PARCELA,                                                    ');
        SQL.Add('       B.VAL_PARCELA,                                                ');
        SQL.Add('       IFNULL(B.VAL_JUROS,0)    VAL_JUROS,                           ');
        SQL.Add('       IFNULL(B.VAL_MULTA,0)    VAL_MULTA,                           ');
        SQL.Add('       IFNULL(B.VAL_DESCONTO,0) VAL_DESCONTO,                        ');
        SQL.Add('       B.ID_TIPO_DESPESA,                                            ');
        SQL.Add('       C.DESCRICAO_DESPESA,                                          ');
        SQL.Add('       B.ID_F_C,                                                     ');
        SQL.Add('       D.NOME RAZAO_SOCIAL,                                          ');
        SQL.Add('       B.DAT_VENCIMENTO,                                             ');
        SQL.Add('       B.DAT_PAGAMENTO,                                              ');
        SQL.Add('       B.TIP_PAGAMENTO,                                              ');
        SQL.Add('       (SELECT SUM(Y.VALOR) FROM CAP_AP_VALORES Y                    ');
        SQL.Add('         WHERE A.ID_MASTER   = Y.ID_MASTER                           ');
        SQL.Add('           AND A.ID_EMPRESA  = Y.ID_EMPRESA                          ');
        SQL.Add('           AND B.ID_CAP_AP   = Y.ID_CAP_AP)VAL_PAGO                  ');
        SQL.Add('  FROM CAP_AD                A,                                      ');
        SQL.Add('       CAP_AP                B,                                      ');
        SQL.Add('       TIPO_DESPESAS         C,                                      ');
        SQL.Add('       FORNECEDOR_CLIENTE    D                                       ');
        SQL.Add(' WHERE A.ID_MASTER           = B.ID_MASTER                           ');
        SQL.Add('   AND A.ID_EMPRESA          = B.ID_EMPRESA                          ');
        SQL.Add('   AND A.ID_CAP_AD           = B.ID_CAP_AD                           ');
        SQL.Add('   AND B.ID_MASTER           = C.ID_MASTER                           ');
        SQL.Add('   AND B.ID_TIPO_DESPESA     = C.ID_TIPO_DESPESA                     ');
        SQL.Add('   AND B.ID_MASTER           = D.ID_MASTER                           ');
        SQL.Add('   AND B.ID_F_C              = D.ID_F_C                              ');
        SQL.Add('   AND A.ID_MASTER           = '''+IntToStr(ID.id_glo_master)+'''    ');
        SQL.Add('   AND A.ID_EMPRESA          = '''+IntToStr(ID.id_glo_empresa)+'''   ');

        if Not(pesquisa_avancada) then // Pesquisa Fixa
          begin
            SQL.Add(' AND MONTH(B.DAT_VENCIMENTO) = '''+IntToStr(mes)+'''             ');
            SQL.Add(' AND YEAR(B.DAT_VENCIMENTO) = '''+IntToStr(ano)+'''              ');

            SQL.Add(' ORDER BY B.DAT_VENCIMENTO  ');
          end;

        if pesquisa_avancada then // Pesquisa Avan�ada
          begin
            if rdb_pagas.Checked then
              begin
                SQL.Add(' AND B.TIP_PAGAMENTO       IN (''P'',''T'')                     ');
                SQL.Add(' AND EXISTS (SELECT ''X'' FROM CAP_AP_VALORES E                 ');
                SQL.Add('              WHERE A.ID_MASTER           = E.ID_MASTER         ');
                SQL.Add('                AND A.ID_EMPRESA          = E.ID_EMPRESA        ');
                SQL.Add('                AND B.ID_CAP_AP           = E.ID_CAP_AP         ');
                SQL.Add('                AND E.DAT_PAGAMENTO BETWEEN '''+FormatDateTime('yyyy-mm-dd',data_inicial.DateTime)+''' AND '''+FormatDateTime('yyyy-mm-dd',data_final.DateTime)+''') ');
              end;

            if rdb_a_pagar.Checked then
              begin
                SQL.Add('   AND B.TIP_PAGAMENTO       IN (''A'',''P'')                    ');
                SQL.Add('   AND B.DAT_VENCIMENTO BETWEEN '''+FormatDateTime('yyyy-mm-dd',data_inicial.DateTime)+''' AND '''+FormatDateTime('yyyy-mm-dd',data_final.DateTime)+''' ');
              end;

            if edt_pesq_descricao.Text <> EmptyStr then
              SQL.Add(' AND UPPER(A.DESCRICAO_DOCUM) LIKE UPPER(''%'+edt_pesq_descricao.Text+'%'') ');

            if edt_pesq_fornecedor.Text <> EmptyStr then
              SQL.Add(' AND UPPER(D.NOME) LIKE UPPER(''%'+edt_pesq_fornecedor.Text+'%'')  ');

            if edt_pesq_num_doc.Text <> EmptyStr then
              SQL.Add(' AND UPPER(A.NUM_DOCUM) LIKE UPPER(''%'+edt_pesq_num_doc.Text+'%'')  ');

            if edt_pesq_tipo_despesa.Text <> EmptyStr then
              SQL.Add(' AND UPPER(C.DESCRICAO_DESPESA) LIKE UPPER(''%'+edt_pesq_tipo_despesa.Text+'%'')  ');

            if rdb_a_pagar.Checked then
              SQL.Add(' ORDER BY B.DAT_VENCIMENTO  ');

            if rdb_pagas.Checked then
              SQL.Add(' ORDER BY B.DAT_PAGAMENTO  ');
          end;

        Open;
      end;

    if DS.DataSet.IsEmpty then
      UniStatusBar1.Panels.Items[0].Text  := 'Sua pesquisa n�o retornou nenhuma informa��o!'
    else
      begin
        UniStatusBar1.Panels.Items[0].Text  := 'Pesquisa realizada com sucesso!';

        mes := StrToInt(FormatDateTime('MM',DS.DataSet.FieldByName('DAT_VENCIMENTO').AsDateTime));
        ano := StrToInt(FormatDateTime('YYYY',DS.DataSet.FieldByName('DAT_VENCIMENTO').AsDateTime));
      end;

    if (pos_cds <> 0) and (DS.DataSet.RecordCount >= pos_cds) then
      DS.DataSet.RecNo := pos_cds;

    atualiza_info_pag(DS.DataSet.FieldByName('ID_CAP_AP').AsInteger);
  except
    on e:exception do
      begin
        RelatorioErro(String(TUniFrame(Self).Name),'fun��o pesquisa',e.UnitName,e.ClassName,e.Message);
      end;
  end;

end;

procedure TFrameContas_a_Pagar.ADQueryIMG_STATUSGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DS.DataSet.FieldByName('TIP_PAGAMENTO').AsString = 'A' then
    Text:= '<img src="../imagens/16/status_vermelho.png" />';
  if DS.DataSet.FieldByName('TIP_PAGAMENTO').AsString = 'P' then
    Text:= '<img src="../imagens/16/status_amarelo.png" />';
  if DS.DataSet.FieldByName('TIP_PAGAMENTO').AsString = 'T' then
    Text:= '<img src="../imagens/16/status_verde.png" />';
  if DS.DataSet.FieldByName('TIP_PAGAMENTO').AsString = EmptyStr then
    Text:= '<img src="../imagens/16/new.png" />'
end;

procedure TFrameContas_a_Pagar.ADQueryIMG_TIPOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DS.DataSet.FieldByName('TIPO_DOCUM').AsString = 'N' then
    Text:= '<img src="../imagens/16/status_grey_N.png" />';
  if DS.DataSet.FieldByName('TIPO_DOCUM').AsString = 'R' then
    Text:= '<img src="../imagens/16/status_grey_R.png" />';
  if DS.DataSet.FieldByName('TIPO_DOCUM').AsString = 'P' then
    Text:= '<img src="../imagens/16/status_grey_P.png" />'+'('+DS.DataSet.FieldByName('PARCELA').AsString+'/'+
                                                               DS.DataSet.FieldByName('NUM_PARCELAS').AsString+
                                                           ')';
  if DS.DataSet.FieldByName('TIPO_DOCUM').AsString = EmptyStr then
    Text:= '<img src="../imagens/16/new.png" />'
end;

procedure TFrameContas_a_Pagar.atualiza_info_anexo(id_cap_ad: Integer);
begin
  DSAnexo.DataSet.Close;
  (DSAnexo.DataSet as TADQuery).Params[00].AsInteger  := ID.id_glo_master;
  (DSAnexo.DataSet as TADQuery).Params[01].AsInteger  := ID.id_glo_empresa;
  (DSAnexo.DataSet as TADQuery).Params[02].AsInteger  := id_cap_ad;
  DSAnexo.DataSet.Open;
end;

procedure TFrameContas_a_Pagar.atualiza_info_pag(id_cap_ap: Integer);
begin
  DSPagamento.DataSet.Close;
  (DSPagamento.DataSet as TADQuery).Params[00].AsInteger  := ID.id_glo_master;
  (DSPagamento.DataSet as TADQuery).Params[01].AsInteger  := ID.id_glo_empresa;
  (DSPagamento.DataSet as TADQuery).Params[02].AsInteger  := id_cap_ap;
  DSPagamento.DataSet.Open;
end;


end.
