# Optimize System with Amplify (Xposed Module)
## Android 6.0.1 (SM-N910C)
### Use Amplify And Greenify (Boost Mode)
---
### For Amplify

Allow in every 600 seconds
```
com.android.internal.telephony.data-stall
```
Allow in every 1800 seconds
```
com.oasisfeng.greenify.CLEAN_NOW
```
Allow in every 3600 seconds
```
android.appwidget.action.APPWIDGET_UPDATE
```
Allow in every 7200 seconds
```
android.content.syncmanager.SYNC_ALARM(delays sync)
```
Allow in every 10800 seconds
```
com.facebook.common.executors.WakingExecutorServic e.ACTION.ALARM.com.facebook.katana
```
Allow in every 41400 seconds
```
ALARM_WAKEUP_LOCATOR(com.google.android.gms.nlp.AL ARM_WAKEUP_LOCATOR)
ALARM_WAKEUP_BURST_COLLECTION_TRIGGER
ALARM_WAKEUP_ACTIVITY_DETECTION
ALARM_WAKEUP_BURST_COLLECTION_TRIGGER
com.google.android.location.reporting.ACTION_UPDAT E_WORLD
```
Allow in every 93600 seconds

## Wakelock

Allow in every 800 seconds
```
WakefulIntentService[GCoreUlr-LocationReportingService]
RILJ
```
Allow in every 10800 seconds
```
SyncLoopWakeLock(delays sync)
*net_scheduler*
GCoreFlp
Icing
Wakeful StateMachine: GeofencerStateMachine
NfcService:mRoutingWakeLock
SyncService(Package: Push Bullet)
```
Allow in every 41400 seconds
```
    NlpWakeLock
    NlpCollectorWakeLock
    LocationManagerService
    Config Service Fetch
```
Allow in every 9999999 seconds
```
    *job*/com.facebook.katana/com.facebook.analytics2.logger.LollipopUploadServi ce
    JobSchedulerHack-com.facebook.analytics2.logger.LollipopUploadServi ce
    UploadServiceLogic-com.facebook.analytics2.logger.LollipopUploadServi ce
    *job*/com.facebook.orca/com.facebook.bugreporter.scheduler.LollipopService (com.facebook.orca.Messenger)
    *job*/com.facebook.katana/com.facebook.bugreporter.scheduler.LollipopService (com.facebook.katana.Facebook)
```

