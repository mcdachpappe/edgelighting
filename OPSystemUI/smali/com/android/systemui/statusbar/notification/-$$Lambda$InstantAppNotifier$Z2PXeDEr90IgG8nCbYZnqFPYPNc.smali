.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$InstantAppNotifier$Z2PXeDEr90IgG8nCbYZnqFPYPNc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/InstantAppNotifier;

.field private final synthetic f$1:Landroid/app/NotificationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/InstantAppNotifier;Landroid/app/NotificationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$InstantAppNotifier$Z2PXeDEr90IgG8nCbYZnqFPYPNc;->f$0:Lcom/android/systemui/statusbar/notification/InstantAppNotifier;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$InstantAppNotifier$Z2PXeDEr90IgG8nCbYZnqFPYPNc;->f$1:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$InstantAppNotifier$Z2PXeDEr90IgG8nCbYZnqFPYPNc;->f$0:Lcom/android/systemui/statusbar/notification/InstantAppNotifier;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$InstantAppNotifier$Z2PXeDEr90IgG8nCbYZnqFPYPNc;->f$1:Landroid/app/NotificationManager;

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->lambda$updateForegroundInstantApps$1$InstantAppNotifier(Landroid/app/NotificationManager;Landroid/util/Pair;)V

    return-void
.end method
