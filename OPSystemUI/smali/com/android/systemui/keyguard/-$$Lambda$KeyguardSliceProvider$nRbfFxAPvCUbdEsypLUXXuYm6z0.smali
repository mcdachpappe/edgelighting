.class public final synthetic Lcom/android/systemui/keyguard/-$$Lambda$KeyguardSliceProvider$nRbfFxAPvCUbdEsypLUXXuYm6z0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

.field private final synthetic f$1:Landroid/media/MediaMetadata;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Landroid/media/MediaMetadata;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardSliceProvider$nRbfFxAPvCUbdEsypLUXXuYm6z0;->f$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    iput-object p2, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardSliceProvider$nRbfFxAPvCUbdEsypLUXXuYm6z0;->f$1:Landroid/media/MediaMetadata;

    iput p3, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardSliceProvider$nRbfFxAPvCUbdEsypLUXXuYm6z0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardSliceProvider$nRbfFxAPvCUbdEsypLUXXuYm6z0;->f$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    iget-object v1, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardSliceProvider$nRbfFxAPvCUbdEsypLUXXuYm6z0;->f$1:Landroid/media/MediaMetadata;

    iget p0, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardSliceProvider$nRbfFxAPvCUbdEsypLUXXuYm6z0;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->lambda$onMetadataOrStateChanged$0$KeyguardSliceProvider(Landroid/media/MediaMetadata;I)V

    return-void
.end method
