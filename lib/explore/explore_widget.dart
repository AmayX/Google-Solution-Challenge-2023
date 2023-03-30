import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'explore_model.dart';
export 'explore_model.dart';

class ExploreWidget extends StatefulWidget {
  const ExploreWidget({Key? key}) : super(key: key);

  @override
  _ExploreWidgetState createState() => _ExploreWidgetState();
}

class _ExploreWidgetState extends State<ExploreWidget> {
  late ExploreModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExploreModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF1F4F8),
      appBar: AppBar(
        backgroundColor: Color(0xFF90C9EE),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30.0,
          ),
          onPressed: () async {
            context.safePop();
          },
        ),
        title: Text(
          'Events',
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Montserrat',
                color: Color(0xFF090F13),
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: PagedListView<DocumentSnapshot<Object?>?, EventsRecord>(
              pagingController: () {
                final Query<Object?> Function(Query<Object?>) queryBuilder =
                    (eventsRecord) => eventsRecord.orderBy('Category');
                if (_model.pagingController != null) {
                  final query = queryBuilder(EventsRecord.collection);
                  if (query != _model.pagingQuery) {
                    // The query has changed
                    _model.pagingQuery = query;
                    _model.streamSubscriptions.forEach((s) => s?.cancel());
                    _model.streamSubscriptions.clear();
                    _model.pagingController!.refresh();
                  }
                  return _model.pagingController!;
                }

                _model.pagingController = PagingController(firstPageKey: null);
                _model.pagingQuery = queryBuilder(EventsRecord.collection);
                _model.pagingController!
                    .addPageRequestListener((nextPageMarker) {
                  queryEventsRecordPage(
                    queryBuilder: (eventsRecord) =>
                        eventsRecord.orderBy('Category'),
                    nextPageMarker: nextPageMarker,
                    pageSize: 25,
                    isStream: true,
                  ).then((page) {
                    _model.pagingController!.appendPage(
                      page.data,
                      page.nextPageMarker,
                    );
                    final streamSubscription = page.dataStream?.listen((data) {
                      data.forEach((item) {
                        final itemIndexes = _model.pagingController!.itemList!
                            .asMap()
                            .map((k, v) => MapEntry(v.reference.id, k));
                        final index = itemIndexes[item.reference.id];
                        final items = _model.pagingController!.itemList!;
                        if (index != null) {
                          items.replaceRange(index, index + 1, [item]);
                          _model.pagingController!.itemList = {
                            for (var item in items) item.reference: item
                          }.values.toList();
                        }
                      });
                      setState(() {});
                    });
                    _model.streamSubscriptions.add(streamSubscription);
                  });
                });
                return _model.pagingController!;
              }(),
              padding: EdgeInsets.zero,
              reverse: false,
              scrollDirection: Axis.vertical,
              builderDelegate: PagedChildBuilderDelegate<EventsRecord>(
                // Customize what your widget looks like when it's loading the first page.
                firstPageProgressIndicatorBuilder: (_) => Center(
                  child: SizedBox(
                    width: 40.0,
                    height: 40.0,
                    child: CircularProgressIndicator(
                      color: FlutterFlowTheme.of(context).primaryColor,
                    ),
                  ),
                ),

                itemBuilder: (context, _, listViewIndex) {
                  final listViewEventsRecord =
                      _model.pagingController!.itemList![listViewIndex];
                  return Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 20.0),
                    child: Container(
                      width: double.infinity,
                      height: 184.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: Image.asset(
                            'assets/images/gradient-people-planting-tree-illustration_23-2149202056.jpeg',
                          ).image,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Color(0x65090F13),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 2.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        listViewEventsRecord.name!,
                                        style: FlutterFlowTheme.of(context)
                                            .title1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Colors.white,
                                              fontSize: 24.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        listViewEventsRecord.organiser!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xFF39D2C0),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {
                                          if (listViewEventsRecord.category ==
                                              1) {
                                            context.pushNamed(
                                              'Detailed_Event_Tree',
                                              queryParams: {
                                                'getDetails': serializeParam(
                                                  listViewEventsRecord
                                                      .reference,
                                                  ParamType.DocumentReference,
                                                ),
                                              }.withoutNulls,
                                            );

                                            return;
                                          } else {
                                            if (listViewEventsRecord.category ==
                                                2) {
                                              context.pushNamed(
                                                'Detailed_Event_Water',
                                                queryParams: {
                                                  'getDetails': serializeParam(
                                                    listViewEventsRecord
                                                        .reference,
                                                    ParamType.DocumentReference,
                                                  ),
                                                }.withoutNulls,
                                              );

                                              return;
                                            } else {
                                              if (listViewEventsRecord
                                                      .category ==
                                                  3) {
                                                context.pushNamed(
                                                  'Detailed_Event_Clean',
                                                  queryParams: {
                                                    'getDetails':
                                                        serializeParam(
                                                      listViewEventsRecord
                                                          .reference,
                                                      ParamType
                                                          .DocumentReference,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                return;
                                              } else {
                                                if (listViewEventsRecord
                                                        .category ==
                                                    4) {
                                                  context.pushNamed(
                                                    'Detailed_Event_Awareness',
                                                    queryParams: {
                                                      'getDetails':
                                                          serializeParam(
                                                        listViewEventsRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                    }.withoutNulls,
                                                  );

                                                  return;
                                                } else {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text('Error!'),
                                                        content: Text(
                                                            'Page Navigation Error has occured!'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                  return;
                                                }
                                              }
                                            }
                                          }
                                        },
                                        text: 'More Info',
                                        icon: Icon(
                                          Icons.add_rounded,
                                          color: Colors.white,
                                          size: 15.0,
                                        ),
                                        options: FFButtonOptions(
                                          width: 120.0,
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Color(0xFF90C9EE),
                                          textStyle: GoogleFonts.getFont(
                                            'Lexend Deca',
                                            color: Colors.white,
                                            fontSize: 14.0,
                                          ),
                                          elevation: 3.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 4.0),
                                              child: Text(
                                                listViewEventsRecord.time!,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title3
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: Colors.white,
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                            Text(
                                              listViewEventsRecord.date!,
                                              textAlign: TextAlign.end,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Color(0xB4FFFFFF),
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
