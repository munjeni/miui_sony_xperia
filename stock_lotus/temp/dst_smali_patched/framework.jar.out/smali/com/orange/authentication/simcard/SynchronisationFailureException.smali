.class public Lcom/orange/authentication/simcard/SynchronisationFailureException;
.super Lcom/orange/authentication/simcard/SimCardAuthenticationException;
.source "SynchronisationFailureException.java"


# instance fields
.field private final mAuts:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .parameter "auts"

    .prologue
    const-string v0, "Authentication Failure"

    invoke-direct {p0, v0}, Lcom/orange/authentication/simcard/SimCardAuthenticationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/orange/authentication/simcard/SynchronisationFailureException;->mAuts:[B

    return-void
.end method


# virtual methods
.method public getAuts()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/orange/authentication/simcard/SynchronisationFailureException;->mAuts:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
