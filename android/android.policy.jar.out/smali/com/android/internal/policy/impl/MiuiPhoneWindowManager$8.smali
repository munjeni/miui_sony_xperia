.class Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;
.super Ljava/lang/Object;
.source "MiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

.field final synthetic val$msg:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 830
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->val$msg:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 832
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$700(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v4

    if-nez v4, :cond_0

    .line 833
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    new-instance v5, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8$1;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v7, 0x10300f0

    invoke-direct {v5, p0, v6, v7}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8$1;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;Landroid/content/Context;I)V

    #setter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$702(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 857
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$700(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 858
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x603002e

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 859
    .local v3, view:Landroid/view/View;
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const v4, 0x60b0021

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    #setter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMsgText:Landroid/widget/TextView;
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$802(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 860
    const v4, 0x60b0022

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 861
    .local v0, animationView:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$700(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 863
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$700(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7e5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 865
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$700(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x102

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 868
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$700(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Landroid/view/Window;->setDimAmount(F)V

    .line 869
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$700(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 870
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 871
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$700(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 872
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$700(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x6020034

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 873
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$700(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 874
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$700(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 876
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    #setter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$902(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    .line 877
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$900(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 880
    .end local v0           #animationView:Landroid/widget/ImageView;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMsgText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$800(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->val$msg:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 881
    return-void
.end method
