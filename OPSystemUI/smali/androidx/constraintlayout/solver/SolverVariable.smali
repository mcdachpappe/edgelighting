.class public Landroidx/constraintlayout/solver/SolverVariable;
.super Ljava/lang/Object;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/SolverVariable$Type;
    }
.end annotation


# static fields
.field private static uniqueErrorId:I = 0x1


# instance fields
.field public computedValue:F

.field definitionId:I

.field public id:I

.field mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

.field mClientEquationsCount:I

.field private mName:Ljava/lang/String;

.field mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public strength:I

.field strengthVector:[F

.field public usageInRowCount:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    iput p2, p0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iput p2, p0, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 p2, 0x0

    iput p2, p0, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/4 v0, 0x7

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    const/16 v0, 0x8

    new-array v0, v0, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    iput p2, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    iput p2, p0, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    iput-object p1, p0, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    return-void
.end method

.method static increaseErrorId()V
    .locals 1

    sget v0, Landroidx/constraintlayout/solver/SolverVariable;->uniqueErrorId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/constraintlayout/solver/SolverVariable;->uniqueErrorId:I

    return-void
.end method


# virtual methods
.method public final addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    return-void
.end method

.method public final removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_1

    :goto_1
    sub-int p1, v0, v2

    add-int/lit8 p1, p1, -0x1

    if-ge v1, p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    add-int v3, v2, v1

    add-int/lit8 v4, v3, 0x1

    aget-object v4, p1, v4

    aput-object v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget p1, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->mName:Ljava/lang/String;

    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNKNOWN:Landroidx/constraintlayout/solver/SolverVariable$Type;

    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    return-void
.end method

.method public setType(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/constraintlayout/solver/SolverVariable;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v4, v3, v2

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    aget-object v3, v3, v2

    invoke-virtual {v4, v3, p1, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->updateFromRow(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/ArrayRow;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    return-void
.end method
