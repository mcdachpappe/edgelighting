.class Lcom/oneplus/volume/OpOutputChooserDialog$7;
.super Ljava/lang/Object;
.source "OpOutputChooserDialog.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/volume/OpOutputChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    const-string p0, "OpOutputChooserDialog"

    const-string p1, " init BluetoothManager error"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
