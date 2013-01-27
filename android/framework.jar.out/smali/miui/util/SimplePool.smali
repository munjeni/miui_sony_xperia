.class public Lmiui/util/SimplePool;
.super Ljava/lang/Object;
.source "SimplePool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/SimplePool$PoolInstance;,
        Lmiui/util/SimplePool$Manager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static newInsance(Lmiui/util/SimplePool$Manager;I)Lmiui/util/SimplePool$PoolInstance;
    .locals 1
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiui/util/SimplePool$Manager",
            "<TT;>;I)",
            "Lmiui/util/SimplePool$PoolInstance",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, manager:Lmiui/util/SimplePool$Manager;,"Lmiui/util/SimplePool$Manager<TT;>;"
    new-instance v0, Lmiui/util/SimplePool$PoolInstance;

    invoke-direct {v0, p0, p1}, Lmiui/util/SimplePool$PoolInstance;-><init>(Lmiui/util/SimplePool$Manager;I)V

    return-object v0
.end method
