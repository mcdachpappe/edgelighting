.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$3$840XxWS_RWDahgeIBbiGSPlNZGs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$3$840XxWS_RWDahgeIBbiGSPlNZGs;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$3$840XxWS_RWDahgeIBbiGSPlNZGs;->f$0:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;->lambda$checkSave$0(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method
