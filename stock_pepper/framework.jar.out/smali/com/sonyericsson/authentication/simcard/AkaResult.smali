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
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sonyericsson/authentication/simcard/AkaResult;->mCk:[B

    .line 24
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sonyericsson/authentication/simcard/AkaResult;->mIk:[B

    .line 25
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sonyericsson/authentication/simcard/AkaResult;->mRes:[B

    .line 26
    return-void
.end method


# virtual methods
.method public final getCk()[B
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/authentication/simcard/AkaResult;->mCk:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final getIk()[B
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/authentication/simcard/AkaResult;->mIk:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final getRes()[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/authentication/simcard/AkaResult;->mRes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
