.class Lcom/android/systemui/qs/tiles/BluetoothTile$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BluetoothTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$2;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$2;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$400(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TWS broadcast onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_8

    const-string v0, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$2;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$500(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TWS broadcast command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", args: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v3, "|"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "+VDBTY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    array-length v0, p2

    const/4 v1, 0x3

    if-lt v0, v1, :cond_8

    const/4 v0, 0x0

    const/4 v2, -0x1

    move v3, v2

    move v4, v3

    move v5, v4

    move v2, v0

    :goto_1
    aget-object v6, p2, v0

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ge v2, v6, :cond_5

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v8, v6, 0x1

    aget-object v8, p2, v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$2;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    const/4 v10, 0x2

    add-int/2addr v6, v10

    aget-object v6, p2, v6

    invoke-static {v9, v6}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$600(Lcom/android/systemui/qs/tiles/BluetoothTile;Ljava/lang/Object;)I

    move-result v6

    if-ne v8, v7, :cond_2

    move v3, v6

    :cond_2
    if-ne v8, v10, :cond_3

    move v4, v6

    :cond_3
    if-ne v8, v1, :cond_4

    move v5, v6

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$2;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$700(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TWS v2 battery info for device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", leftLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rightLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", boxLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$2;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$100(Lcom/android/systemui/qs/tiles/BluetoothTile;Ljava/lang/String;)Lcom/android/systemui/qs/tiles/BluetoothTile$BatteryInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    if-gez v3, :cond_6

    if-ltz v4, :cond_7

    :cond_6
    iput v3, p1, Lcom/android/systemui/qs/tiles/BluetoothTile$BatteryInfo;->leftBattery:I

    iput v4, p1, Lcom/android/systemui/qs/tiles/BluetoothTile$BatteryInfo;->rightBattery:I

    iput-boolean v7, p1, Lcom/android/systemui/qs/tiles/BluetoothTile$BatteryInfo;->isOnePlusPods:Z

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$2;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    :cond_8
    return-void
.end method
