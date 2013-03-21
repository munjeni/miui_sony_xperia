.class public Landroid/text/BoringLayout$Metrics;
.super Landroid/graphics/Paint$FontMetricsInt;
.source "BoringLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/BoringLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metrics"
.end annotation


# instance fields
.field private hasEmoji:Z

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1046
    invoke-direct {p0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/text/BoringLayout$Metrics;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1046
    iget-boolean v0, p0, Landroid/text/BoringLayout$Metrics;->hasEmoji:Z

    return v0
.end method

.method static synthetic access$002(Landroid/text/BoringLayout$Metrics;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1046
    iput-boolean p1, p0, Landroid/text/BoringLayout$Metrics;->hasEmoji:Z

    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/graphics/Paint$FontMetricsInt;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/text/BoringLayout$Metrics;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
