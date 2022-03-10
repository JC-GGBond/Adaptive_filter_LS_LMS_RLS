





## RLS
1. Initialization
    $$
   P(0)=\delta I\in C^{M\times M} (\delta >0\  and\ small)\ M\ is\ the\ order\ of\ filter\\
   \hat w(0)=0\\
   \lambda \approx but <1
    $$

2. When n=1,2...,N
    $$
    u(n)=[u(n),u(n-1),u(n-2),\cdots,u(n-M+1)]^T
    $$
    $$
    \begin{gathered}
    k(n)=\frac{\lambda^{-1} P(n-1) u(n)}{1+\lambda^{-1} u^{H}(n) P(n-1) u(n)} \\
    \xi(n)=d(n)-\hat{w}^{H}(n-1) u(n) \\
    \hat{w}(n)=\hat{w}(n-1)+k(n) \xi^{*}(n) \\
    P(n)=\lambda^{-1} P(n-1)\lambda^{-1} k(n) u^{H}(n) P(n-1)
    \end{gathered}
    $$

3. n=n+1 return 2.