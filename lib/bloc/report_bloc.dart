import 'dart:async';

import 'package:beca_app/model/built_report.dart';
import 'package:beca_app/service/report_service.dart';
import 'package:beca_app/utils/local_store_keys.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'report_event.dart';
part 'report_state.dart';

class ReportBloc extends Bloc<ReportEvent, ReportState> {
  final ReportService reportService;

  ReportBloc({this.reportService})
      : assert(reportService != null),
        super(ReportState());

  @override
  Stream<ReportState> mapEventToState(
    ReportEvent event,
  ) async* {
    // #region ReportPost
    if (event is ReportPost) {
      yield ReportInProgress();

      try {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String authToken = prefs.getString(LocalStoreKeys.AuthToken.toString());

        await reportService.postReport("Bearer $authToken", BuiltReport(
          (b) {
            b..message = event.message;
            if (event.questionId != null) b..questionId = event.questionId;
            return b;
          },
        ));

        yield ReportSuccess();
      } catch (e) {
        yield ReportFailure(message: e.toString());
      }
    }
    // #endregion
  }
}
