.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$S1ImsFAQfzG0QWSEvA0DqvnEIeY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/tuner/ShortcutPicker;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Landroidx/preference/PreferenceScreen;

.field private final synthetic f$3:Landroidx/preference/PreferenceCategory;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/ShortcutPicker;Landroid/content/Context;Landroidx/preference/PreferenceScreen;Landroidx/preference/PreferenceCategory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$S1ImsFAQfzG0QWSEvA0DqvnEIeY;->f$0:Lcom/android/systemui/tuner/ShortcutPicker;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$S1ImsFAQfzG0QWSEvA0DqvnEIeY;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$S1ImsFAQfzG0QWSEvA0DqvnEIeY;->f$2:Landroidx/preference/PreferenceScreen;

    iput-object p4, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$S1ImsFAQfzG0QWSEvA0DqvnEIeY;->f$3:Landroidx/preference/PreferenceCategory;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$S1ImsFAQfzG0QWSEvA0DqvnEIeY;->f$0:Lcom/android/systemui/tuner/ShortcutPicker;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$S1ImsFAQfzG0QWSEvA0DqvnEIeY;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$S1ImsFAQfzG0QWSEvA0DqvnEIeY;->f$2:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$S1ImsFAQfzG0QWSEvA0DqvnEIeY;->f$3:Landroidx/preference/PreferenceCategory;

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/systemui/tuner/ShortcutPicker;->lambda$onCreatePreferences$1$ShortcutPicker(Landroid/content/Context;Landroidx/preference/PreferenceScreen;Landroidx/preference/PreferenceCategory;Landroid/content/pm/LauncherActivityInfo;)V

    return-void
.end method
