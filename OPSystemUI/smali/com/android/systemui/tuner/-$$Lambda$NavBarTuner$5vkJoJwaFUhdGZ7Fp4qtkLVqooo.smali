.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$5vkJoJwaFUhdGZ7Fp4qtkLVqooo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/tuner/NavBarTuner;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroidx/preference/ListPreference;

.field private final synthetic f$3:Landroidx/preference/Preference;

.field private final synthetic f$4:Landroidx/preference/ListPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Landroidx/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$5vkJoJwaFUhdGZ7Fp4qtkLVqooo;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$5vkJoJwaFUhdGZ7Fp4qtkLVqooo;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$5vkJoJwaFUhdGZ7Fp4qtkLVqooo;->f$2:Landroidx/preference/ListPreference;

    iput-object p4, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$5vkJoJwaFUhdGZ7Fp4qtkLVqooo;->f$3:Landroidx/preference/Preference;

    iput-object p5, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$5vkJoJwaFUhdGZ7Fp4qtkLVqooo;->f$4:Landroidx/preference/ListPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$5vkJoJwaFUhdGZ7Fp4qtkLVqooo;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$5vkJoJwaFUhdGZ7Fp4qtkLVqooo;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$5vkJoJwaFUhdGZ7Fp4qtkLVqooo;->f$2:Landroidx/preference/ListPreference;

    iget-object v3, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$5vkJoJwaFUhdGZ7Fp4qtkLVqooo;->f$3:Landroidx/preference/Preference;

    iget-object v4, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$5vkJoJwaFUhdGZ7Fp4qtkLVqooo;->f$4:Landroidx/preference/ListPreference;

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/tuner/NavBarTuner;->lambda$bindButton$7$NavBarTuner(Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
