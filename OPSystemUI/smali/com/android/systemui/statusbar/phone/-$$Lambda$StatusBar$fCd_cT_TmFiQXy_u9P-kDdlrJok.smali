.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$fCd_cT_TmFiQXy_u9P-kDdlrJok;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:Z

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$fCd_cT_TmFiQXy_u9P-kDdlrJok;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$fCd_cT_TmFiQXy_u9P-kDdlrJok;->f$1:Z

    iput p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$fCd_cT_TmFiQXy_u9P-kDdlrJok;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$fCd_cT_TmFiQXy_u9P-kDdlrJok;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$fCd_cT_TmFiQXy_u9P-kDdlrJok;->f$1:Z

    iget p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$fCd_cT_TmFiQXy_u9P-kDdlrJok;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$handleVisibleToUserChangedImpl$22$StatusBar(ZI)V

    return-void
.end method
