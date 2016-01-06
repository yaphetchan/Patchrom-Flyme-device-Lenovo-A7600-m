.class public Lcom/lenovo/settings/MtkSwitchAirplaneModeReceiver;
.super Lcom/android/internal/app/AlertActivity;
.source "MtkSwitchAirplaneModeReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkSwitchAirplaneModeReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createDialog()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeReceiver;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 44
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0a0258

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeReceiver;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 45
    const v1, 0x7f0a0257

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeReceiver;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 46
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeReceiver;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 47
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 48
    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeReceiver;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 49
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 50
    invoke-virtual {p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeReceiver;->setupAlert()V

    .line 51
    invoke-virtual {p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeReceiver;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 52
    invoke-virtual {p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeReceiver;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 54
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 59
    const-string v1, "MtkSwitchAirplaneModeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick, which: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    packed-switch p2, :pswitch_data_0

    .line 77
    :goto_0
    :pswitch_0
    return-void

    .line 68
    :pswitch_1
    invoke-virtual {p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeReceiver;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeReceiver;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 26
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "MtkSwitchAirplaneModeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.lenovo.action.show_airplanemode_confirm_dialog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    invoke-direct {p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeReceiver;->createDialog()V

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeReceiver;->finish()V

    goto :goto_0
.end method