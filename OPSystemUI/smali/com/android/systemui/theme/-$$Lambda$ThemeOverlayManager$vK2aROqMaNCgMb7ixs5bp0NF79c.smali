.class public final synthetic Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$vK2aROqMaNCgMb7ixs5bp0NF79c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$vK2aROqMaNCgMb7ixs5bp0NF79c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$vK2aROqMaNCgMb7ixs5bp0NF79c;

    invoke-direct {v0}, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$vK2aROqMaNCgMb7ixs5bp0NF79c;-><init>()V

    sput-object v0, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$vK2aROqMaNCgMb7ixs5bp0NF79c;->INSTANCE:Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$vK2aROqMaNCgMb7ixs5bp0NF79c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/content/om/OverlayInfo;

    invoke-static {p1}, Lcom/android/systemui/theme/ThemeOverlayManager;->lambda$applyCurrentUserOverlays$4(Landroid/content/om/OverlayInfo;)Z

    move-result p0

    return p0
.end method
