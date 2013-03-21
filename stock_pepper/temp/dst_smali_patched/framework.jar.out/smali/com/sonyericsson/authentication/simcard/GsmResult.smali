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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sonyericsson/authentication/simcard/GsmResult;->mKc:J

    iput p3, p0, Lcom/sonyericsson/authentication/simcard/GsmResult;->mSres:I

    return-void
.end method


# virtual methods
.method public final getKc()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/sonyericsson/authentication/simcard/GsmResult;->mKc:J

    return-wide v0
.end method

.method public final getSres()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sonyericsson/authentication/simcard/GsmResult;->mSres:I

    return v0
.end method
