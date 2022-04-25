import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/create_type_widget.dart';
import '../createbanco/createbanco_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../transfer_complete/transfer_complete_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TransferFundsWidget extends StatefulWidget {
  const TransferFundsWidget({Key key}) : super(key: key);

  @override
  _TransferFundsWidgetState createState() => _TransferFundsWidgetState();
}

class _TransferFundsWidgetState extends State<TransferFundsWidget>
    with TickerProviderStateMixin {
  DateTime datePicked;
  String dropDownValue1;
  TextEditingController textController1;
  String dropDownValue2;
  String dropDownValue3;
  TextEditingController textController2;
  TextEditingController textController3;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'buttonOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 47),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'buttonOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 47),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 170,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 80),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'dropDownOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 100,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 60),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'dropDownOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 140,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 70),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'dropDownOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 140,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 70),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 170,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 80),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 170,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 80),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'rowOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: -220,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, -0.0),
        scale: 0.4,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: -220,
      fadeIn: true,
      initialState: AnimationState(
        scale: 0.4,
        opacity: 0,
      ),
      finalState: AnimationState(
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Material(
            color: Colors.transparent,
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
              ),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.8,
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.84,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).darkBackground,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 44, 20, 20),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'ei0zqv6k' /* Transações */,
                            ),
                            style: FlutterFlowTheme.of(context).title1,
                          ),
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: FlutterFlowTheme.of(context).background,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              buttonSize: 48,
                              icon: Icon(
                                Icons.close_rounded,
                                color: FlutterFlowTheme.of(context).textColor,
                                size: 30,
                              ),
                              onPressed: () async {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.bottomToTop,
                                  duration: Duration(milliseconds: 300),
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: CreatebancoWidget(),
                                ),
                              );
                            },
                            text: FFLocalizations.of(context).getText(
                              'szn90p63' /* Create Bank */,
                            ),
                            options: FFButtonOptions(
                              width: 150,
                              height: 40,
                              color: FlutterFlowTheme.of(context).background,
                              textStyle: FlutterFlowTheme.of(context).bodyText2,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 8,
                            ),
                          ).animated(
                              [animationsMap['buttonOnPageLoadAnimation1']]),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding:
                                          MediaQuery.of(context).viewInsets,
                                      child: CreateTypeWidget(),
                                    );
                                  },
                                );
                              },
                              text: FFLocalizations.of(context).getText(
                                's2t1euqo' /* Create Type */,
                              ),
                              options: FFButtonOptions(
                                width: 150,
                                height: 40,
                                color: FlutterFlowTheme.of(context).background,
                                textStyle:
                                    FlutterFlowTheme.of(context).bodyText2,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: 8,
                              ),
                            ).animated(
                                [animationsMap['buttonOnPageLoadAnimation2']]),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: TextFormField(
                          controller: textController1,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'udiuxdqv' /* Name Transaction  */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context)
                                .title1
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.of(context).grayLight,
                                  fontWeight: FontWeight.w300,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).background,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).background,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 24, 24, 24),
                          ),
                          style: FlutterFlowTheme.of(context).title1,
                          keyboardType: TextInputType.number,
                        ).animated(
                            [animationsMap['textFieldOnPageLoadAnimation1']]),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: StreamBuilder<List<BancoRecord>>(
                          stream: queryBancoRecord(
                            queryBuilder: (bancoRecord) => bancoRecord.where(
                                'banco_user',
                                isEqualTo: currentUserReference),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: SpinKitPumpingHeart(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    size: 40,
                                  ),
                                ),
                              );
                            }
                            List<BancoRecord> dropDownBancoRecordList =
                                snapshot.data;
                            return FlutterFlowDropDown(
                              options: dropDownBancoRecordList
                                  .map((e) => e.nome)
                                  .toList()
                                  .toList(),
                              onChanged: (val) =>
                                  setState(() => dropDownValue1 = val),
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 60,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color:
                                        FlutterFlowTheme.of(context).textColor,
                                  ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: FlutterFlowTheme.of(context).grayLight,
                                size: 15,
                              ),
                              fillColor:
                                  FlutterFlowTheme.of(context).darkBackground,
                              elevation: 2,
                              borderColor:
                                  FlutterFlowTheme.of(context).background,
                              borderWidth: 2,
                              borderRadius: 8,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20, 20, 12, 20),
                              hidesUnderline: true,
                            ).animated([
                              animationsMap['dropDownOnPageLoadAnimation1']
                            ]);
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: FlutterFlowDropDown(
                          initialOption: dropDownValue2 ??= 'Debito',
                          options: [
                            FFLocalizations.of(context).getText(
                              '864b1mss' /* Debito */,
                            ),
                            FFLocalizations.of(context).getText(
                              'lc584qfk' /* Credito */,
                            )
                          ].toList(),
                          onChanged: (val) =>
                              setState(() => dropDownValue2 = val),
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 60,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).textColor,
                              ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).grayLight,
                            size: 15,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).darkBackground,
                          elevation: 2,
                          borderColor: FlutterFlowTheme.of(context).background,
                          borderWidth: 2,
                          borderRadius: 8,
                          margin:
                              EdgeInsetsDirectional.fromSTEB(20, 20, 12, 20),
                          hidesUnderline: true,
                        ).animated(
                            [animationsMap['dropDownOnPageLoadAnimation2']]),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: StreamBuilder<List<TransactionCategoriesRecord>>(
                          stream: queryTransactionCategoriesRecord(
                            queryBuilder: (transactionCategoriesRecord) =>
                                transactionCategoriesRecord.where('user',
                                    isEqualTo: currentUserReference),
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: SpinKitPumpingHeart(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    size: 40,
                                  ),
                                ),
                              );
                            }
                            List<TransactionCategoriesRecord>
                                dropDownTransactionCategoriesRecordList =
                                snapshot.data;
                            // Return an empty Container when the document does not exist.
                            if (snapshot.data.isEmpty) {
                              return Container();
                            }
                            final dropDownTransactionCategoriesRecord =
                                dropDownTransactionCategoriesRecordList
                                        .isNotEmpty
                                    ? dropDownTransactionCategoriesRecordList
                                        .first
                                    : null;
                            return FlutterFlowDropDown(
                              options: dropDownTransactionCategoriesRecord
                                  .categoryName
                                  .toList()
                                  .toList(),
                              onChanged: (val) =>
                                  setState(() => dropDownValue3 = val),
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 60,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color:
                                        FlutterFlowTheme.of(context).textColor,
                                  ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: FlutterFlowTheme.of(context).grayLight,
                                size: 15,
                              ),
                              fillColor:
                                  FlutterFlowTheme.of(context).darkBackground,
                              elevation: 2,
                              borderColor:
                                  FlutterFlowTheme.of(context).background,
                              borderWidth: 2,
                              borderRadius: 8,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20, 20, 12, 20),
                              hidesUnderline: true,
                            ).animated([
                              animationsMap['dropDownOnPageLoadAnimation3']
                            ]);
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: TextFormField(
                          controller: textController2,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              '32toaa70' /* Amount */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context)
                                .title1
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.of(context).grayLight,
                                  fontWeight: FontWeight.w300,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).background,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).background,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 24, 24, 24),
                          ),
                          style: FlutterFlowTheme.of(context).title1,
                          keyboardType: TextInputType.number,
                        ).animated(
                            [animationsMap['textFieldOnPageLoadAnimation2']]),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                                child: Text(
                                  dateTimeFormat('d/M H:mm', datePicked),
                                  style: FlutterFlowTheme.of(context).title2,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                await DatePicker.showDateTimePicker(
                                  context,
                                  showTitleActions: true,
                                  onConfirm: (date) {
                                    setState(() => datePicked = date);
                                  },
                                  currentTime: getCurrentTimestamp,
                                  minTime: getCurrentTimestamp,
                                  locale: LocaleType.values.firstWhere(
                                    (l) =>
                                        l.name ==
                                        FFLocalizations.of(context)
                                            .languageCode,
                                    orElse: null,
                                  ),
                                );
                              },
                              child: Icon(
                                Icons.calendar_today_sharp,
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                      if ((dropDownValue2) == 'Crédito')
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                          child: TextFormField(
                            controller: textController3,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                '90dohliv' /* x Times */,
                              ),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .title1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color:
                                        FlutterFlowTheme.of(context).grayLight,
                                    fontWeight: FontWeight.w300,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).background,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).background,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20, 24, 24, 24),
                            ),
                            style: FlutterFlowTheme.of(context).title1,
                            keyboardType: TextInputType.number,
                          ).animated(
                              [animationsMap['textFieldOnPageLoadAnimation3']]),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        final transactionsCreateData =
                            createTransactionsRecordData(
                          transactionName: textController1.text,
                          transactionTime: datePicked,
                          categoryName: valueOrDefault<String>(
                            dropDownValue3,
                            'Compras',
                          ),
                          user: currentUserReference,
                          transactionValor: double.parse(textController2.text),
                          categoryTipo: dropDownValue2,
                          transactionBanco: dropDownValue1,
                        );
                        await TransactionsRecord.collection
                            .doc()
                            .set(transactionsCreateData);

                        final creditoDetalheCreateData =
                            createCreditoDetalheRecordData(
                          vezes: int.parse(textController3.text),
                        );
                        await CreditoDetalheRecord.collection
                            .doc()
                            .set(creditoDetalheCreateData);
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.bottomToTop,
                            duration: Duration(milliseconds: 350),
                            reverseDuration: Duration(milliseconds: 350),
                            child: TransferCompleteWidget(),
                          ),
                        );
                      },
                      text: FFLocalizations.of(context).getText(
                        '8x0lcyqd' /* Send Transfer */,
                      ),
                      options: FFButtonOptions(
                        width: 300,
                        height: 70,
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        textStyle: FlutterFlowTheme.of(context).title1,
                        elevation: 0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ).animated([animationsMap['rowOnPageLoadAnimation']]),
          ),
          Text(
            FFLocalizations.of(context).getText(
              'htyccdvp' /* Tap above to complete transfer */,
            ),
            style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: 'Lexend Deca',
                  color: Color(0x43000000),
                ),
          ).animated([animationsMap['textOnPageLoadAnimation']]),
        ],
      ),
    );
  }
}
