.class Landroid/app/ContextImpl$36;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;Landroid/content/res/Resources;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ContextImpl;


# direct methods
.method constructor <init>(Landroid/app/ContextImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 1541
    iput-object p1, p0, Landroid/app/ContextImpl$36;->this$0:Landroid/app/ContextImpl;

    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 1543
    new-instance v0, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;

    invoke-direct {v0, p1}, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
