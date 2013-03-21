.class public final Lcom/sonyericsson/authentication/simcard/GsmResult;
.super Ljava/lang/Object;
.source "GsmResult.java"

# interfaces
.implements Lcom/orange/authentication/simcard/GsmAuthenticationResult;


# instance fields
.field private final mKc:J

.field private final mSres:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0
    .parameter "kcVal"
    .parameter "sres"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/sonyericsson/authentication/simcard/GsmResult;->mKc:J

    .line 22
    iput p3, p0, Lcom/sonyericsson/authentication/simcard/GsmResult;->mSres:I

    .line 23
    return-void
.end method


# virtual methods
.method public final getKc()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/sonyericsson/authentication/simcard/GsmResult;->mKc:J

    return-wide v0
.end method

.method public final getSres()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/sonyericsson/authentication/simcard/GsmResult;->mSres:I

    return v0
.end method
