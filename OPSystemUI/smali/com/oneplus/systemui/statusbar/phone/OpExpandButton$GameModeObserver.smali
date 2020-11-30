.class final Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$GameModeObserver;
.super Landroid/database/ContentObserver;
.source "OpExpandButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GameModeObserver"
.end annotation


# instance fields
.field private final gameModeUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$GameModeObserver;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "game_mode_status"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$GameModeObserver;->gameModeUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$GameModeObserver;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->access$100(Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange game mode on ? "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ExpandButton"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$GameModeObserver;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->dismiss()V

    :cond_0
    return-void
.end method

.method public register(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$GameModeObserver;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

    invoke-static {v0}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->access$000(Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$GameModeObserver;->gameModeUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
