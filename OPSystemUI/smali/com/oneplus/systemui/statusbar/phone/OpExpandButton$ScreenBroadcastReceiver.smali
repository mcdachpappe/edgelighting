.class Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$ScreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OpExpandButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;


# direct methods
.method private constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$ScreenBroadcastReceiver;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$ScreenBroadcastReceiver;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive action:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ExpandButton"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$ScreenBroadcastReceiver;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->dismiss()V

    :cond_0
    return-void
.end method
