.class public final synthetic Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$aDUeHG-2fyaQA2OArgzN2VFmIKQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$Callback;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$aDUeHG-2fyaQA2OArgzN2VFmIKQ;->f$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    return-void
.end method


# virtual methods
.method public final onActivityStarted(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$aDUeHG-2fyaQA2OArgzN2VFmIKQ;->f$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->lambda$showUsbHighTemperatureAlarmInternal$4$PowerNotificationWarnings(I)V

    return-void
.end method
