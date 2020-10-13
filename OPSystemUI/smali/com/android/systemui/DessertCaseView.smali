.class public Lcom/android/systemui/DessertCaseView;
.super Landroid/widget/FrameLayout;
.source "DessertCaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/DessertCaseView$RescalingContainer;
    }
.end annotation


# static fields
.field private static final ALPHA_MASK:[F

.field private static final MASK:[F

.field private static final NUM_PASTRIES:I

.field private static final PASTRIES:[I

.field private static final RARE_PASTRIES:[I

.field private static final WHITE_MASK:[F

.field private static final XRARE_PASTRIES:[I

.field private static final XXRARE_PASTRIES:[I


# instance fields
.field hsv:[F

.field private mCellSize:I

.field private mCells:[Landroid/view/View;

.field private mColumns:I

.field private mDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mFreeList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private final mJuggle:Ljava/lang/Runnable;

.field private mRows:I

.field private mStarted:Z

.field private mWidth:I

.field private final tmpSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->dessert_kitkat:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->dessert_android:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sput-object v1, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    const/16 v1, 0x8

    new-array v1, v1, [I

    sget v2, Lcom/android/systemui/R$drawable;->dessert_cupcake:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->dessert_donut:I

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$drawable;->dessert_eclair:I

    aput v2, v1, v0

    sget v2, Lcom/android/systemui/R$drawable;->dessert_froyo:I

    const/4 v5, 0x3

    aput v2, v1, v5

    sget v2, Lcom/android/systemui/R$drawable;->dessert_gingerbread:I

    const/4 v6, 0x4

    aput v2, v1, v6

    sget v2, Lcom/android/systemui/R$drawable;->dessert_honeycomb:I

    const/4 v7, 0x5

    aput v2, v1, v7

    sget v2, Lcom/android/systemui/R$drawable;->dessert_ics:I

    const/4 v7, 0x6

    aput v2, v1, v7

    sget v2, Lcom/android/systemui/R$drawable;->dessert_jellybean:I

    const/4 v7, 0x7

    aput v2, v1, v7

    sput-object v1, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    new-array v1, v6, [I

    sget v2, Lcom/android/systemui/R$drawable;->dessert_petitfour:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->dessert_donutburger:I

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$drawable;->dessert_flan:I

    aput v2, v1, v0

    sget v2, Lcom/android/systemui/R$drawable;->dessert_keylimepie:I

    aput v2, v1, v5

    sput-object v1, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    new-array v1, v5, [I

    sget v2, Lcom/android/systemui/R$drawable;->dessert_zombiegingerbread:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->dessert_dandroid:I

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$drawable;->dessert_jandycane:I

    aput v2, v1, v0

    sput-object v1, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    sget-object v0, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    array-length v0, v0

    sget-object v1, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/android/systemui/DessertCaseView;->NUM_PASTRIES:I

    const/16 v0, 0x14

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/DessertCaseView;->MASK:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/systemui/DessertCaseView;->ALPHA_MASK:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/DessertCaseView;->WHITE_MASK:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/DessertCaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/DessertCaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/util/SparseArray;

    sget p2, Lcom/android/systemui/DessertCaseView;->NUM_PASTRIES:I

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/systemui/DessertCaseView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/DessertCaseView$1;-><init>(Lcom/android/systemui/DessertCaseView;)V

    iput-object p1, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Ljava/lang/Runnable;

    const/4 p1, 0x3

    new-array p2, p1, [F

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/android/systemui/DessertCaseView;->hsv:[F

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    sget v0, Lcom/android/systemui/R$dimen;->dessert_case_cell_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget v1, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    const/4 v2, 0x2

    const/16 v3, 0x200

    if-ge v1, v3, :cond_0

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [[I

    sget-object v5, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    aput-object v5, v4, p3

    sget-object v5, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    aput-object v5, v4, v1

    sget-object v1, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    aput-object v1, v4, v2

    sget-object v1, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    aput-object v1, v4, p1

    array-length p1, v4

    move v1, p3

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v2, v4, v1

    array-length v5, v2

    move-object v6, v3

    move v3, p3

    :goto_1
    if-ge v3, v5, :cond_1

    aget v7, v2, v3

    iput-object v6, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {p2, v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v6}, Lcom/android/systemui/DessertCaseView;->convertToAlphaMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v8, p2, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v9, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v10, Lcom/android/systemui/DessertCaseView;->ALPHA_MASK:[F

    invoke-direct {v9, v10}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget v9, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    invoke-virtual {v8, p3, p3, v9, v9}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    iget-object v9, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    invoke-virtual {v9, v7, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move-object v3, v6

    goto :goto_0

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/DessertCaseView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/DessertCaseView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/DessertCaseView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private static convertToAlphaMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v4, Lcom/android/systemui/DessertCaseView;->MASK:[F

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method static frand()F
    .locals 2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method static frand(FF)F
    .locals 1

    invoke-static {}, Lcom/android/systemui/DessertCaseView;->frand()F

    move-result v0

    sub-float/2addr p1, p0

    mul-float/2addr v0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method private getOccupied(Landroid/view/View;)[Landroid/graphics/Point;
    .locals 9

    const p0, 0x2000002

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const v0, 0x2000001

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    mul-int v1, p0, p0

    new-array v1, v1, [Landroid/graphics/Point;

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, p0, :cond_2

    move v4, v3

    move v3, v0

    :goto_1
    if-ge v3, p0, :cond_1

    add-int/lit8 v5, v4, 0x1

    new-instance v6, Landroid/graphics/Point;

    iget v7, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v7, v2

    iget v8, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v3

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    aput-object v6, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_2
    new-array p0, v0, [Landroid/graphics/Point;

    return-object p0
.end method

.method static irand(II)I
    .locals 0

    int-to-float p0, p0

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/android/systemui/DessertCaseView;->frand(FF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private final makeHardwareLayerListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lcom/android/systemui/DessertCaseView$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/DessertCaseView$3;-><init>(Lcom/android/systemui/DessertCaseView;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public fillFreeList()V
    .locals 1

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/android/systemui/DessertCaseView;->fillFreeList(I)V

    return-void
.end method

.method public declared-synchronized fillFreeList(I)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    iget v6, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v4, v6

    add-int/2addr v4, v3

    aget-object v3, v5, v4

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/systemui/DessertCaseView$2;

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/DessertCaseView$2;-><init>(Lcom/android/systemui/DessertCaseView;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->random_color()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-static {}, Lcom/android/systemui/DessertCaseView;->frand()F

    move-result v4

    const v5, 0x3a03126f    # 5.0E-4f

    cmpg-float v5, v4, v5

    const/high16 v6, 0x3f000000    # 0.5f

    if-gez v5, :cond_2

    iget-object v4, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    sget-object v5, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    invoke-virtual {p0, v5}, Lcom/android/systemui/DessertCaseView;->pick([I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    const v5, 0x3ba3d70a    # 0.005f

    cmpg-float v5, v4, v5

    if-gez v5, :cond_3

    iget-object v4, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    sget-object v5, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    invoke-virtual {p0, v5}, Lcom/android/systemui/DessertCaseView;->pick([I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    cmpg-float v5, v4, v6

    if-gez v5, :cond_4

    iget-object v4, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    sget-object v5, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    invoke-virtual {p0, v5}, Lcom/android/systemui/DessertCaseView;->pick([I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_4
    const v5, 0x3f333333    # 0.7f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    sget-object v5, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    invoke-virtual {p0, v5}, Lcom/android/systemui/DessertCaseView;->pick([I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_6

    invoke-virtual {v3}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget v4, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/systemui/DessertCaseView;->place(Landroid/view/View;Landroid/graphics/Point;Z)V

    if-lez p1, :cond_0

    const v2, 0x2000002

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v6, v2

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected declared-synchronized onSizeChanged(IIII)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget p3, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    if-ne p3, p1, :cond_0

    iget p3, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p3, p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean p3, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->stop()V

    :cond_1
    iput p1, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    iput p2, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    iget-object p1, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget p1, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I

    iget p2, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    iget p1, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    iget p2, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    iget p1, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    iget p2, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr p1, p2

    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    const/high16 p1, 0x3e800000    # 0.25f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget p2, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    iget p4, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iget v0, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr p4, v0

    sub-int/2addr p2, p4

    int-to-float p2, p2

    const/high16 p4, 0x3f000000    # 0.5f

    mul-float/2addr p2, p4

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget p2, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I

    iget v0, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iget v1, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    mul-int/2addr v0, v1

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p2, p4

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget p4, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    if-ge p2, p4, :cond_3

    move p4, p1

    :goto_1
    iget v0, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    if-ge p4, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p4, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method pick([I)I
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    array-length p0, p1

    int-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-int p0, v0

    aget p0, p1, p0

    return p0
.end method

.method public declared-synchronized place(Landroid/view/View;Landroid/graphics/Point;Z)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    :try_start_0
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/android/systemui/DessertCaseView;->frand()F

    move-result v5

    const v6, 0x2000001

    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/DessertCaseView;->getOccupied(Landroid/view/View;)[Landroid/graphics/Point;

    move-result-object v7

    array-length v10, v7

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_0

    aget-object v12, v7, v11

    iget-object v13, v1, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v13, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v13, v1, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    iget v14, v12, Landroid/graphics/Point;->y:I

    iget v15, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v14, v15

    iget v12, v12, Landroid/graphics/Point;->x:I

    add-int/2addr v14, v12

    aput-object v8, v13, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    const v7, 0x3c23d70a    # 0.01f

    cmpg-float v7, v5, v7

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-gez v7, :cond_1

    iget v5, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    sub-int/2addr v5, v11

    if-ge v3, v5, :cond_3

    iget v5, v1, Lcom/android/systemui/DessertCaseView;->mRows:I

    sub-int/2addr v5, v11

    if-ge v4, v5, :cond_3

    const/4 v5, 0x4

    goto :goto_1

    :cond_1
    const v7, 0x3dcccccd    # 0.1f

    cmpg-float v7, v5, v7

    if-gez v7, :cond_2

    iget v5, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    sub-int/2addr v5, v12

    if-ge v3, v5, :cond_3

    iget v5, v1, Lcom/android/systemui/DessertCaseView;->mRows:I

    sub-int/2addr v5, v12

    if-ge v4, v5, :cond_3

    move v5, v11

    goto :goto_1

    :cond_2
    const v7, 0x3ea8f5c3    # 0.33f

    cmpg-float v5, v5, v7

    if-gez v5, :cond_3

    iget v5, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    sub-int/2addr v5, v13

    if-eq v3, v5, :cond_3

    iget v5, v1, Lcom/android/systemui/DessertCaseView;->mRows:I

    sub-int/2addr v5, v13

    if-eq v4, v5, :cond_3

    move v5, v12

    goto :goto_1

    :cond_3
    move v5, v13

    :goto_1
    invoke-virtual {v0, v6, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v2, 0x2000002

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v2, v1, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/DessertCaseView;->getOccupied(Landroid/view/View;)[Landroid/graphics/Point;

    move-result-object v2

    array-length v7, v2

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v7, :cond_5

    aget-object v15, v2, v14

    iget-object v11, v1, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    iget v13, v15, Landroid/graphics/Point;->y:I

    iget v12, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v13, v12

    iget v12, v15, Landroid/graphics/Point;->x:I

    add-int/2addr v13, v12

    aget-object v11, v11, v13

    if-eqz v11, :cond_4

    iget-object v12, v1, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    goto :goto_2

    :cond_5
    iget-object v7, v1, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-direct {v1, v11}, Lcom/android/systemui/DessertCaseView;->getOccupied(Landroid/view/View;)[Landroid/graphics/Point;

    move-result-object v14

    array-length v15, v14

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v15, :cond_6

    aget-object v10, v14, v9

    iget-object v12, v1, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    iget v13, v10, Landroid/graphics/Point;->y:I

    iget v6, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v13, v6

    iget v6, v10, Landroid/graphics/Point;->x:I

    add-int/2addr v13, v6

    aput-object v8, v12, v13

    add-int/lit8 v9, v9, 0x1

    const v6, 0x2000001

    goto :goto_4

    :cond_6
    if-eq v11, v0, :cond_8

    const v6, 0x2000001

    invoke-virtual {v11, v6, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz p3, :cond_7

    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const-wide/16 v12, 0x1f4

    invoke-virtual {v9, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    new-instance v10, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/DessertCaseView$4;

    invoke-direct {v10, v1, v11}, Lcom/android/systemui/DessertCaseView$4;-><init>(Lcom/android/systemui/DessertCaseView;Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_7
    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_3

    :cond_8
    const v6, 0x2000001

    goto :goto_3

    :cond_9
    array-length v6, v2

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_a

    aget-object v8, v2, v7

    iget-object v9, v1, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    iget v10, v8, Landroid/graphics/Point;->y:I

    iget v11, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v10, v11

    iget v11, v8, Landroid/graphics/Point;->x:I

    add-int/2addr v10, v11

    aput-object v0, v9, v10

    iget-object v9, v1, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, 0x4

    const/4 v6, 0x0

    invoke-static {v6, v2}, Lcom/android/systemui/DessertCaseView;->irand(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x42b40000    # 90.0f

    mul-float/2addr v2, v6

    if-eqz p3, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->bringToFront()V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x2

    new-array v8, v7, [Landroid/animation/Animator;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v10, v9, [F

    int-to-float v11, v5

    const/4 v12, 0x0

    aput v11, v10, v12

    invoke-static {v0, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v8, v12

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v10, v9, [F

    aput v11, v10, v12

    invoke-static {v0, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v8, v9

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v7, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x1f4

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    sget-object v9, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v11, v10, [F

    const/4 v12, 0x0

    aput v2, v11, v12

    invoke-static {v0, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v8, v12

    sget-object v2, Landroid/view/View;->X:Landroid/util/Property;

    new-array v9, v10, [F

    iget v11, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    mul-int/2addr v3, v11

    sub-int/2addr v5, v10

    iget v10, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    mul-int/2addr v10, v5

    const/4 v11, 0x2

    div-int/2addr v10, v11

    add-int/2addr v3, v10

    int-to-float v3, v3

    const/4 v10, 0x0

    aput v3, v9, v10

    invoke-static {v0, v2, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v8, v3

    sget-object v2, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v3, v3, [F

    iget v9, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    mul-int/2addr v4, v9

    iget v9, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    mul-int/2addr v5, v9

    const/4 v9, 0x2

    div-int/2addr v5, v9

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v7, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/DessertCaseView;->makeHardwareLayerListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_6

    :cond_b
    iget v6, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    mul-int/2addr v3, v6

    add-int/lit8 v6, v5, -0x1

    iget v7, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    mul-int/2addr v7, v6

    const/4 v8, 0x2

    div-int/2addr v7, v8

    add-int/2addr v3, v7

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setX(F)V

    iget v3, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    mul-int/2addr v4, v3

    iget v3, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    mul-int/2addr v6, v3

    const/4 v3, 0x2

    div-int/2addr v6, v3

    add-int/2addr v4, v6

    int-to-float v3, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    int-to-float v3, v5

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public place(Landroid/view/View;Z)V
    .locals 4

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/android/systemui/DessertCaseView;->irand(II)I

    move-result v1

    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    invoke-static {v2, v3}, Lcom/android/systemui/DessertCaseView;->irand(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/DessertCaseView;->place(Landroid/view/View;Landroid/graphics/Point;Z)V

    return-void
.end method

.method random_color()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->hsv:[F

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/android/systemui/DessertCaseView;->irand(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float/2addr v2, v3

    aput v2, v0, v1

    iget-object p0, p0, Lcom/android/systemui/DessertCaseView;->hsv:[F

    invoke-static {p0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method public start()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/systemui/DessertCaseView;->fillFreeList(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
