.class public Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$1;,
        Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$SettingsObserver;,
        Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$SyncStateTracker;,
        Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;,
        Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;,
        Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$WifiStateTracker;,
        Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field private static final BUTTON_BLUETOOTH:I = 0x4

.field private static final BUTTON_BRIGHTNESS:I = 0x1

.field private static final BUTTON_LOCATION:I = 0x3

.field private static final BUTTON_SYNC:I = 0x2

.field private static final BUTTON_WIFI:I = 0x0

.field private static final FULL_BRIGHTNESS_THRESHOLD:F = 0.8f

.field private static final HALF_BRIGHTNESS_THRESHOLD:F = 0.3f

.field private static final IND_DRAWABLE_MID:[I

.field private static final IND_DRAWABLE_OFF:[I

.field private static final IND_DRAWABLE_ON:[I

.field private static final POS_CENTER:I = 0x1

.field private static final POS_LEFT:I = 0x0

.field private static final POS_RIGHT:I = 0x2

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x5

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field static final TAG:Ljava/lang/String; = "SettingsAppWidgetProvider"

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static final sBluetoothState:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static sLocalBluetoothAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

.field private static final sLocationState:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static sSettingsObserver:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$SettingsObserver;

.field private static final sSyncState:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static final sWifiState:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 55
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.flyme.deviceoriginalsettings"

    const-string v2, "com.flyme.deviceoriginalsettings.widget.SettingsAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 59
    sput-object v3, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    .line 82
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    .line 88
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    .line 94
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    .line 105
    new-instance v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$WifiStateTracker;

    invoke-direct {v0, v3}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$WifiStateTracker;-><init>(Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 106
    new-instance v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;

    invoke-direct {v0, v3}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>(Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 107
    new-instance v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;

    invoke-direct {v0, v3}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;-><init>(Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 108
    new-instance v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$SyncStateTracker;

    invoke-direct {v0, v3}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$SyncStateTracker;-><init>(Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;

    return-void

    .line 82
    nop

    :array_0
    .array-data 4
        0x7f020013
        0x7f020012
        0x7f020014
    .end array-data

    .line 88
    :array_1
    .array-data 4
        0x7f020010
        0x7f02000f
        0x7f020011
    .end array-data

    .line 94
    :array_2
    .array-data 4
        0x7f020016
        0x7f020015
        0x7f020017
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 946
    return-void
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    return-object v0
.end method

.method static synthetic access$800()Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;)Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    .prologue
    .line 52
    sput-object p0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 696
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040104

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 698
    .local v0, "views":Landroid/widget/RemoteViews;
    const v1, 0x7f0e02c6

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 700
    const v1, 0x7f0e02d2

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 703
    const v1, 0x7f0e02cf

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 706
    const v1, 0x7f0e02cc

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 708
    const v1, 0x7f0e02c9

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 711
    const-string v1, "SettingsAppWidgetProvider"

    const-string v2, "buildUpdate"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-static {v0, p0}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 713
    return-object v0
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 660
    sget-object v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-nez v0, :cond_0

    .line 661
    new-instance v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 663
    sget-object v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$SettingsObserver;->startObserving()V

    .line 665
    :cond_0
    return-void
.end method

.method private static getBrightness(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 861
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 866
    :goto_0
    return v0

    .line 864
    :catch_0
    move-exception v1

    .line 866
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getBrightnessMode(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 877
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 879
    .local v0, "brightnessMode":I
    if-ne v0, v2, :cond_0

    .line 883
    .end local v0    # "brightnessMode":I
    :goto_0
    return v2

    .restart local v0    # "brightnessMode":I
    :cond_0
    move v2, v3

    .line 879
    goto :goto_0

    .line 880
    .end local v0    # "brightnessMode":I
    :catch_0
    move-exception v1

    .line 881
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SettingsAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightnessMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 883
    goto :goto_0
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buttonId"    # I

    .prologue
    const/4 v4, 0x0

    .line 798
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 799
    .local v0, "launchIntent":Landroid/content/Intent;
    const-class v2, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 800
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 802
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 804
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private toggleBrightness(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 893
    :try_start_0
    const-string v6, "power"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v5

    .line 895
    .local v5, "power":Landroid/os/IPowerManager;
    if-eqz v5, :cond_1

    .line 896
    const-string v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 898
    .local v4, "pm":Landroid/os/PowerManager;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 899
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v6, "screen_brightness"

    invoke-static {v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 901
    .local v0, "brightness":I
    const/4 v1, 0x0

    .line 903
    .local v1, "brightnessMode":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x112001f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 905
    const-string v6, "screen_brightness_mode"

    invoke-static {v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 911
    :cond_0
    const/4 v6, 0x1

    if-ne v1, v6, :cond_2

    .line 912
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    .line 913
    const/4 v1, 0x0

    .line 923
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x112001f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 926
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness_mode"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 933
    :goto_1
    if-nez v1, :cond_1

    .line 934
    invoke-interface {v5, v0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 935
    const-string v6, "screen_brightness"

    invoke-static {v2, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 943
    .end local v0    # "brightness":I
    .end local v1    # "brightnessMode":I
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "pm":Landroid/os/PowerManager;
    .end local v5    # "power":Landroid/os/IPowerManager;
    :cond_1
    :goto_2
    return-void

    .line 914
    .restart local v0    # "brightness":I
    .restart local v1    # "brightnessMode":I
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v4    # "pm":Landroid/os/PowerManager;
    .restart local v5    # "power":Landroid/os/IPowerManager;
    :cond_2
    invoke-virtual {v4}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 915
    invoke-virtual {v4}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    goto :goto_0

    .line 916
    :cond_3
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 917
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    goto :goto_0

    .line 919
    :cond_4
    const/4 v1, 0x1

    .line 920
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 931
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 938
    .end local v0    # "brightness":I
    .end local v1    # "brightnessMode":I
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "pm":Landroid/os/PowerManager;
    .end local v5    # "power":Landroid/os/IPowerManager;
    :catch_0
    move-exception v3

    .line 939
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "SettingsAppWidgetProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "toggleBrightness: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 940
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 941
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v6, "SettingsAppWidgetProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "toggleBrightness: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 11
    .param p0, "views"    # Landroid/widget/RemoteViews;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v10, 0x7f0e02d3

    const v9, 0x7f0e02d2

    const v8, 0x7f0a0ae4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 738
    sget-object v4, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 739
    const-string v4, "SettingsAppWidgetProvider"

    const-string v5, "updateButtons"

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    sget-object v4, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 741
    sget-object v4, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 742
    sget-object v4, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 744
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->getBrightnessMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 745
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0a0ae5

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 748
    const v4, 0x7f02006c

    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 750
    const v4, 0x7f0e02d4

    const v5, 0x7f020017

    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 788
    :goto_0
    return-void

    .line 753
    :cond_0
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->getBrightness(Landroid/content/Context;)I

    move-result v0

    .line 754
    .local v0, "brightness":I
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 756
    .local v3, "pm":Landroid/os/PowerManager;
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 758
    .local v1, "full":I
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 760
    .local v2, "half":I
    if-le v0, v1, :cond_1

    .line 761
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0a0ae6

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 764
    const v4, 0x7f02006d

    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 780
    :goto_1
    if-le v0, v2, :cond_3

    .line 781
    const v4, 0x7f0e02d4

    const v5, 0x7f020017

    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 766
    :cond_1
    if-le v0, v2, :cond_2

    .line 767
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0a0ae7

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 770
    const v4, 0x7f02006e

    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 773
    :cond_2
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0a0ae8

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 776
    const v4, 0x7f02006f

    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 784
    :cond_3
    const v4, 0x7f0e02d4

    const v5, 0x7f020014

    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 722
    const-string v2, "SettingsAppWidgetProvider"

    const-string v3, "updateWidget"

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 726
    .local v1, "views":Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 727
    .local v0, "gm":Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 728
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 729
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 686
    sget-object v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-eqz v0, :cond_0

    .line 687
    sget-object v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$SettingsObserver;->stopObserving()V

    .line 688
    const/4 v0, 0x0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 690
    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 681
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 682
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 815
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 816
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "action":Ljava/lang/String;
    const-string v3, "SettingsAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 819
    sget-object v3, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 847
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/LenovoUtils;->setContext(Landroid/content/Context;)V

    .line 850
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 851
    :cond_1
    return-void

    .line 820
    :cond_2
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 821
    sget-object v3, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 822
    :cond_3
    const-string v3, "android.location.MODE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 823
    sget-object v3, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 824
    :cond_4
    sget-object v3, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 825
    sget-object v3, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 826
    :cond_5
    const-string v3, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 827
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 828
    .local v2, "data":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 829
    .local v1, "buttonId":I
    if-nez v1, :cond_6

    .line 830
    sget-object v3, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 831
    :cond_6
    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    .line 832
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->toggleBrightness(Landroid/content/Context;)V

    goto :goto_0

    .line 833
    :cond_7
    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    .line 834
    sget-object v3, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 835
    :cond_8
    const/4 v3, 0x3

    if-ne v1, v3, :cond_9

    .line 836
    sget-object v3, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 837
    :cond_9
    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 838
    sget-object v3, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 671
    const-string v2, "SettingsAppWidgetProvider"

    const-string v3, "onUpdate"

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 674
    .local v1, "view":Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 675
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 677
    :cond_0
    return-void
.end method