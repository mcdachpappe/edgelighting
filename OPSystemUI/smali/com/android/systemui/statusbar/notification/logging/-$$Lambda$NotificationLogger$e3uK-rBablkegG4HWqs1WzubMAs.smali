.class public final synthetic Lcom/android/systemui/statusbar/notification/logging/-$$Lambda$NotificationLogger$e3uK-rBablkegG4HWqs1WzubMAs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

.field private final synthetic f$1:[Lcom/android/internal/statusbar/NotificationVisibility;

.field private final synthetic f$2:[Lcom/android/internal/statusbar/NotificationVisibility;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;[Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/-$$Lambda$NotificationLogger$e3uK-rBablkegG4HWqs1WzubMAs;->f$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/logging/-$$Lambda$NotificationLogger$e3uK-rBablkegG4HWqs1WzubMAs;->f$1:[Lcom/android/internal/statusbar/NotificationVisibility;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/logging/-$$Lambda$NotificationLogger$e3uK-rBablkegG4HWqs1WzubMAs;->f$2:[Lcom/android/internal/statusbar/NotificationVisibility;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/-$$Lambda$NotificationLogger$e3uK-rBablkegG4HWqs1WzubMAs;->f$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/-$$Lambda$NotificationLogger$e3uK-rBablkegG4HWqs1WzubMAs;->f$1:[Lcom/android/internal/statusbar/NotificationVisibility;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/-$$Lambda$NotificationLogger$e3uK-rBablkegG4HWqs1WzubMAs;->f$2:[Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->lambda$logNotificationVisibilityChanges$0$NotificationLogger([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V

    return-void
.end method
