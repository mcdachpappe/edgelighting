.class public final synthetic Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$BKZ0Bh5XLVtMnQqHjBJSLhE_Z2M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private final synthetic f$1:Ljava/util/ArrayList;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$BKZ0Bh5XLVtMnQqHjBJSLhE_Z2M;->f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$BKZ0Bh5XLVtMnQqHjBJSLhE_Z2M;->f$1:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$BKZ0Bh5XLVtMnQqHjBJSLhE_Z2M;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$BKZ0Bh5XLVtMnQqHjBJSLhE_Z2M;->f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$BKZ0Bh5XLVtMnQqHjBJSLhE_Z2M;->f$1:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$BKZ0Bh5XLVtMnQqHjBJSLhE_Z2M;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->lambda$clearNotifications$7$NotificationStackScrollLayout(Ljava/util/ArrayList;I)V

    return-void
.end method
