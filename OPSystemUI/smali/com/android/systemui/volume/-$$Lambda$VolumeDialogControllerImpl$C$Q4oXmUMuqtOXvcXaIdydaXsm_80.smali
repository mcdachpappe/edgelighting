.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$VolumeDialogControllerImpl$C$Q4oXmUMuqtOXvcXaIdydaXsm_80;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/Map$Entry;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;ZLjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogControllerImpl$C$Q4oXmUMuqtOXvcXaIdydaXsm_80;->f$0:Ljava/util/Map$Entry;

    iput-boolean p2, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogControllerImpl$C$Q4oXmUMuqtOXvcXaIdydaXsm_80;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogControllerImpl$C$Q4oXmUMuqtOXvcXaIdydaXsm_80;->f$2:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogControllerImpl$C$Q4oXmUMuqtOXvcXaIdydaXsm_80;->f$0:Ljava/util/Map$Entry;

    iget-boolean v1, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogControllerImpl$C$Q4oXmUMuqtOXvcXaIdydaXsm_80;->f$1:Z

    iget-object p0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogControllerImpl$C$Q4oXmUMuqtOXvcXaIdydaXsm_80;->f$2:Ljava/lang/Boolean;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->lambda$onCaptionComponentStateChanged$0(Ljava/util/Map$Entry;ZLjava/lang/Boolean;)V

    return-void
.end method
