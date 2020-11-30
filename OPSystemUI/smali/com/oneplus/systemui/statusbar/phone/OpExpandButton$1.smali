.class Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$1;
.super Landroid/os/Handler;
.source "OpExpandButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->dismiss()V

    :cond_0
    return-void
.end method
