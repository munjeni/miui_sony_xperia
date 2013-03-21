.class public final Lcom/sonyericsson/authentication/simcard/AkaResult;
.super Ljava/lang/Object;
.source "AkaResult.java"

# interfaces
.implements Lcom/orange/authentication/simcard/AkaAuthenticationResult;


# instance fields
.field private final mCk:[B

.field private final mIk:[B

.field private final mRes:[B


# direct methods
.method public constructor <init>([B[B[B)V
    .locals 1
    .parameter "cipherKey"
    .parameter "secretKey"
    .parameter "response"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sonyericsson/authentication/simcard/AkaResult;->mCk:[B

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sonyericsson/authentication/simcard/AkaResult;->mIk:[B

    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sonyericsson/authentication/simcard/AkaResult;->mRes:[B

    return-void
.end method


# virtual methods
.method public final getCk()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/sonyericsson/authentication/simcard/AkaResult;->mCk:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final getIk()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/sonyericsson/authentication/simcard/AkaResult;->mIk:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final getRes()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/sonyericsson/authentication/simcard/AkaResult;->mRes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
