.class public Landroid/renderscript/RenderScriptGL$SurfaceConfig;
.super Ljava/lang/Object;
.source "RenderScriptGL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/RenderScriptGL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceConfig"
.end annotation


# instance fields
.field mAlphaMin:I

.field mAlphaPref:I

.field mColorMin:I

.field mColorPref:I

.field mDepthMin:I

.field mDepthPref:I

.field mSamplesMin:I

.field mSamplesPref:I

.field mSamplesQ:F

.field mStencilMin:I

.field mStencilPref:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    .line 58
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    .line 59
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    .line 60
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    .line 61
    iput v2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    .line 62
    iput v2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    .line 63
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    .line 64
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    .line 65
    iput v1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    .line 66
    iput v1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    .line 67
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V
    .locals 3
    .parameter "sc"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    .line 58
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    .line 59
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    .line 60
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    .line 61
    iput v2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    .line 62
    iput v2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    .line 63
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    .line 64
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    .line 65
    iput v1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    .line 66
    iput v1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    .line 67
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    .line 73
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    .line 74
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    .line 75
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    .line 76
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    .line 77
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    .line 78
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    .line 79
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    .line 80
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    .line 81
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    .line 82
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    .line 83
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    .line 84
    return-void
.end method

.method private validateRange(IIII)V
    .locals 2
    .parameter "umin"
    .parameter "upref"
    .parameter "rmin"
    .parameter "rmax"

    .prologue
    .line 87
    if-lt p1, p3, :cond_0

    if-le p1, p4, :cond_1

    .line 88
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Minimum value provided out of range."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    if-ge p2, p1, :cond_2

    .line 91
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "preferred must be >= Minimum."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    return-void
.end method


# virtual methods
.method public setAlpha(II)V
    .locals 2
    .parameter "minimum"
    .parameter "preferred"

    .prologue
    .line 116
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    .line 117
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    .line 118
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    .line 119
    return-void
.end method

.method public setColor(II)V
    .locals 2
    .parameter "minimum"
    .parameter "preferred"

    .prologue
    .line 103
    const/4 v0, 0x5

    const/16 v1, 0x8

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    .line 104
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    .line 105
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    .line 106
    return-void
.end method

.method public setDepth(II)V
    .locals 2
    .parameter "minimum"
    .parameter "preferred"

    .prologue
    .line 131
    const/4 v0, 0x0

    const/16 v1, 0x18

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    .line 132
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    .line 133
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    .line 134
    return-void
.end method

.method public setSamples(IIF)V
    .locals 2
    .parameter "minimum"
    .parameter "preferred"
    .parameter "Q"

    .prologue
    .line 147
    const/4 v0, 0x1

    const/16 v1, 0x20

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    .line 148
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    .line 149
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Quality out of 0-1 range."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    .line 152
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    .line 153
    iput p3, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    .line 154
    return-void
.end method
