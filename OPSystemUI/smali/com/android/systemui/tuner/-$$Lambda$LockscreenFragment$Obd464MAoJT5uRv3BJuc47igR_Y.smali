.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Obd464MAoJT5uRv3BJuc47igR_Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/tuner/LockscreenFragment;

.field private final synthetic f$1:Landroidx/preference/SwitchPreference;

.field private final synthetic f$2:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/LockscreenFragment;Landroidx/preference/SwitchPreference;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Obd464MAoJT5uRv3BJuc47igR_Y;->f$0:Lcom/android/systemui/tuner/LockscreenFragment;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Obd464MAoJT5uRv3BJuc47igR_Y;->f$1:Landroidx/preference/SwitchPreference;

    iput-object p3, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Obd464MAoJT5uRv3BJuc47igR_Y;->f$2:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Obd464MAoJT5uRv3BJuc47igR_Y;->f$0:Lcom/android/systemui/tuner/LockscreenFragment;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Obd464MAoJT5uRv3BJuc47igR_Y;->f$1:Landroidx/preference/SwitchPreference;

    iget-object p0, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Obd464MAoJT5uRv3BJuc47igR_Y;->f$2:Landroidx/preference/Preference;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/android/systemui/tuner/LockscreenFragment;->lambda$setupGroup$1$LockscreenFragment(Landroidx/preference/SwitchPreference;Landroidx/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
