.class public final synthetic Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$w2dgQ1kcC5UhS4OuTNdpiCJsVqQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/ImageWallpaper$GLEngine;

.field private final synthetic f$1:Z

.field private final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ImageWallpaper$GLEngine;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$w2dgQ1kcC5UhS4OuTNdpiCJsVqQ;->f$0:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iput-boolean p2, p0, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$w2dgQ1kcC5UhS4OuTNdpiCJsVqQ;->f$1:Z

    iput-wide p3, p0, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$w2dgQ1kcC5UhS4OuTNdpiCJsVqQ;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$w2dgQ1kcC5UhS4OuTNdpiCJsVqQ;->f$0:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iget-boolean v1, p0, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$w2dgQ1kcC5UhS4OuTNdpiCJsVqQ;->f$1:Z

    iget-wide v2, p0, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$w2dgQ1kcC5UhS4OuTNdpiCJsVqQ;->f$2:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/ImageWallpaper$GLEngine;->lambda$onAmbientModeChanged$1$ImageWallpaper$GLEngine(ZJ)V

    return-void
.end method
