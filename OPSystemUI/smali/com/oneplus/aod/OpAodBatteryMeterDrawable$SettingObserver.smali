.class final Lcom/oneplus/aod/OpAodBatteryMeterDrawable$SettingObserver;
.super Landroid/database/ContentObserver;
.source "OpAodBatteryMeterDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/OpAodBatteryMeterDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodBatteryMeterDrawable;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/OpAodBatteryMeterDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodBatteryMeterDrawable;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodBatteryMeterDrawable;

    invoke-static {p1}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->access$000(Lcom/oneplus/aod/OpAodBatteryMeterDrawable;)V

    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodBatteryMeterDrawable;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->access$100(Lcom/oneplus/aod/OpAodBatteryMeterDrawable;)V

    return-void
.end method
