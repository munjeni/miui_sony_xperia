.class public Lcom/orange/authentication/simcard/UserAuthenticationRejectException;
.super Lcom/orange/authentication/simcard/SimCardAuthenticationException;
.source "UserAuthenticationRejectException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/orange/authentication/simcard/SimCardAuthenticationException;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method
