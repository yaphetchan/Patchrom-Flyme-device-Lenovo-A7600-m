.class Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$3;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 462
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->isRestrictedAndNotPinProtected()Z
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->access$000(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    .line 467
    .local v7, "device":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    new-instance v2, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 468
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "device"

    invoke-virtual {v7}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 470
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    const-class v1, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a06a5

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 474
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v7    # "device":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    :cond_1
    const-string v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick() called for other View: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method