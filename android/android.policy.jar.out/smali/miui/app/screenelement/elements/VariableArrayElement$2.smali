.class Lmiui/app/screenelement/elements/VariableArrayElement$2;
.super Ljava/lang/Object;
.source "VariableArrayElement.java"

# interfaces
.implements Lmiui/app/screenelement/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/screenelement/elements/VariableArrayElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/elements/VariableArrayElement;


# direct methods
.method constructor <init>(Lmiui/app/screenelement/elements/VariableArrayElement;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lmiui/app/screenelement/elements/VariableArrayElement$2;->this$0:Lmiui/app/screenelement/elements/VariableArrayElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 168
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement$2;->this$0:Lmiui/app/screenelement/elements/VariableArrayElement;

    #getter for: Lmiui/app/screenelement/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lmiui/app/screenelement/elements/VariableArrayElement;->access$100(Lmiui/app/screenelement/elements/VariableArrayElement;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lmiui/app/screenelement/elements/VariableArrayElement$Item;

    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableArrayElement$2;->this$0:Lmiui/app/screenelement/elements/VariableArrayElement;

    invoke-direct {v1, v2, p1}, Lmiui/app/screenelement/elements/VariableArrayElement$Item;-><init>(Lmiui/app/screenelement/elements/VariableArrayElement;Lorg/w3c/dom/Element;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method
