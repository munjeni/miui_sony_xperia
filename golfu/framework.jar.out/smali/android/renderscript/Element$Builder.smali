.class public Landroid/renderscript/Element$Builder;
.super Ljava/lang/Object;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mArraySizes:[I

.field mCount:I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 2
    .parameter "rs"

    .prologue
    const/16 v1, 0x8

    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    iput-object p1, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 902
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/Element$Builder;->mCount:I

    .line 903
    new-array v0, v1, [Landroid/renderscript/Element;

    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    .line 904
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    .line 905
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    .line 906
    return-void
.end method


# virtual methods
.method public add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;
    .locals 1
    .parameter "element"
    .parameter "name"

    .prologue
    .line 944
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;
    .locals 6
    .parameter "element"
    .parameter "name"
    .parameter "arraySize"

    .prologue
    const/4 v5, 0x0

    .line 916
    const/4 v3, 0x1

    if-ge p3, v3, :cond_0

    .line 917
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Array size cannot be less than 1."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 919
    :cond_0
    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    iget-object v4, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    array-length v4, v4

    if-ne v3, v4, :cond_1

    .line 920
    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v3, v3, 0x8

    new-array v1, v3, [Landroid/renderscript/Element;

    .line 921
    .local v1, e:[Landroid/renderscript/Element;
    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v3, v3, 0x8

    new-array v2, v3, [Ljava/lang/String;

    .line 922
    .local v2, s:[Ljava/lang/String;
    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v3, v3, 0x8

    new-array v0, v3, [I

    .line 923
    .local v0, as:[I
    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 924
    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 925
    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 926
    iput-object v1, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    .line 927
    iput-object v2, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    .line 928
    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    .line 930
    .end local v0           #as:[I
    .end local v1           #e:[Landroid/renderscript/Element;
    .end local v2           #s:[Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    aput-object p1, v3, v4

    .line 931
    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    aput-object p2, v3, v4

    .line 932
    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    aput p3, v3, v4

    .line 933
    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    .line 934
    return-object p0
.end method

.method public create()Landroid/renderscript/Element;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 954
    iget-object v0, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 955
    iget v0, p0, Landroid/renderscript/Element$Builder;->mCount:I

    new-array v3, v0, [Landroid/renderscript/Element;

    .line 956
    .local v3, ein:[Landroid/renderscript/Element;
    iget v0, p0, Landroid/renderscript/Element$Builder;->mCount:I

    new-array v4, v0, [Ljava/lang/String;

    .line 957
    .local v4, sin:[Ljava/lang/String;
    iget v0, p0, Landroid/renderscript/Element$Builder;->mCount:I

    new-array v5, v0, [I

    .line 958
    .local v5, asin:[I
    iget-object v0, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v0, v8, v3, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 959
    iget-object v0, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v0, v8, v4, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 960
    iget-object v0, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v0, v8, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 962
    array-length v0, v3

    new-array v7, v0, [I

    .line 963
    .local v7, ids:[I
    const/4 v6, 0x0

    .local v6, ct:I
    :goto_0
    array-length v0, v3

    if-ge v6, v0, :cond_0

    .line 964
    aget-object v0, v3, v6

    invoke-virtual {v0}, Landroid/renderscript/Element;->getID()I

    move-result v0

    aput v0, v7, v6

    .line 963
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 966
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v7, v4, v5}, Landroid/renderscript/RenderScript;->nElementCreate2([I[Ljava/lang/String;[I)I

    move-result v1

    .line 967
    .local v1, id:I
    new-instance v0, Landroid/renderscript/Element;

    iget-object v2, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Element;-><init>(ILandroid/renderscript/RenderScript;[Landroid/renderscript/Element;[Ljava/lang/String;[I)V

    return-object v0
.end method
