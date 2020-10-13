.class Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;
.super Ljava/lang/Object;
.source "NotificationContentInflater.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InflationProgress"
.end annotation


# instance fields
.field private expandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

.field private headsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

.field private headsUpStatusBarText:Ljava/lang/CharSequence;

.field private headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

.field private inflatedAmbientView:Landroid/view/View;

.field private inflatedContentView:Landroid/view/View;

.field private inflatedExpandedView:Landroid/view/View;

.field private inflatedHeadsUpView:Landroid/view/View;

.field private inflatedPublicView:Landroid/view/View;

.field private inflatedQuickReplyHeadsUpView:Landroid/view/View;

.field private inflatedQuickReplyView:Landroid/view/View;

.field private newAmbientView:Landroid/widget/RemoteViews;

.field private newContentView:Landroid/widget/RemoteViews;

.field private newExpandedView:Landroid/widget/RemoteViews;

.field private newHeadsUpView:Landroid/widget/RemoteViews;

.field private newPublicView:Landroid/widget/RemoteViews;

.field packageContext:Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newExpandedView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedContentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedContentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newExpandedView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedExpandedView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedExpandedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedHeadsUpView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedHeadsUpView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedPublicView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedPublicView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedAmbientView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedAmbientView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedQuickReplyView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedQuickReplyView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedQuickReplyHeadsUpView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedQuickReplyHeadsUpView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->expandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->expandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newHeadsUpView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newHeadsUpView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->headsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->headsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newContentView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newPublicView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newPublicView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newAmbientView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newAmbientView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->headsUpStatusBarText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->headsUpStatusBarText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

    return-object p1
.end method
