.class public Lmiui/app/screenelement/util/Utils$Point;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0
    .parameter "x0"
    .parameter "y0"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-wide p1, p0, Lmiui/app/screenelement/util/Utils$Point;->x:D

    .line 113
    iput-wide p3, p0, Lmiui/app/screenelement/util/Utils$Point;->y:D

    .line 114
    return-void
.end method


# virtual methods
.method public Offset(Lmiui/app/screenelement/util/Utils$Point;)V
    .locals 4
    .parameter "a"

    .prologue
    .line 117
    iget-wide v0, p0, Lmiui/app/screenelement/util/Utils$Point;->x:D

    iget-wide v2, p1, Lmiui/app/screenelement/util/Utils$Point;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiui/app/screenelement/util/Utils$Point;->x:D

    .line 118
    iget-wide v0, p0, Lmiui/app/screenelement/util/Utils$Point;->y:D

    iget-wide v2, p1, Lmiui/app/screenelement/util/Utils$Point;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiui/app/screenelement/util/Utils$Point;->y:D

    .line 119
    return-void
.end method

.method minus(Lmiui/app/screenelement/util/Utils$Point;)Lmiui/app/screenelement/util/Utils$Point;
    .locals 7
    .parameter "a"

    .prologue
    .line 122
    new-instance v0, Lmiui/app/screenelement/util/Utils$Point;

    iget-wide v1, p0, Lmiui/app/screenelement/util/Utils$Point;->x:D

    iget-wide v3, p1, Lmiui/app/screenelement/util/Utils$Point;->x:D

    sub-double/2addr v1, v3

    iget-wide v3, p0, Lmiui/app/screenelement/util/Utils$Point;->y:D

    iget-wide v5, p1, Lmiui/app/screenelement/util/Utils$Point;->y:D

    sub-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lmiui/app/screenelement/util/Utils$Point;-><init>(DD)V

    return-object v0
.end method
